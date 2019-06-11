# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator.Token do
  @moduledoc """
  A context token used for the generator to maintain state of the generation
  """

  alias GoogleApi.Discovery.V1.Model.RestDescription
  alias GoogleApis.Generator.ElixirGenerator.{Model, Parameter, Property, ResourceContext, Type}
  alias GoogleApis.ApiConfig

  @type t :: %__MODULE__{
          :filename => String.t(),
          :library_name => String.t(),
          :namespace => String.t(),
          :base_dir => String.t(),
          :base_url => String.t(),
          :rest_description => RestDescription.t(),
          :resource_context => ResourceContext.t(),
          :models => list(Model.t()),
          :models_by_name => %{String.t() => Model.t()},
          :global_optional_parameters => list(Parameter.t())
        }

  defstruct [
    :filename,
    :library_name,
    :namespace,
    :base_dir,
    :base_url,
    :rest_description,
    :resource_context,
    :models,
    :models_by_name,
    :global_optional_parameters
  ]

  def build(api_config) do
    filename = ApiConfig.file(api_config)
    library_name = ApiConfig.library_name(api_config)
    namespace = ApiConfig.library_namespace(api_config)

    base_dir =
      Path.join([
        "clients",
        library_name,
        "lib",
        "google_api",
        library_name,
        String.downcase(ApiConfig.module_version(api_config))
      ])

    rest_description =
      api_config
      |> ApiConfig.google_spec_file()
      |> File.read!()
      |> Poison.decode!(as: %RestDescription{})

    {base_url, base_path} = determine_base_paths(rest_description)
    resource_context =
      ResourceContext.empty()
      |> ResourceContext.with_namespace(namespace)
      |> ResourceContext.with_base_path(base_path)

    %__MODULE__{
      filename: filename,
      library_name: library_name,
      namespace: namespace,
      base_dir: base_dir,
      base_url: base_url,
      rest_description: rest_description,
      resource_context: resource_context
    }
  end

  defp determine_base_paths(rest_description) do
    if supports_media_upload?(rest_description.resources) do
      {rest_description.rootUrl, rest_description.basePath}
    else
      {rest_description.baseUrl, ""}
    end
  end

  defp supports_media_upload?(nil), do: false
  defp supports_media_upload?(resources) do
    Enum.any?(resources, fn {_name, resource} ->
      supports_media_upload?(resource.resources) ||
        has_media_upload_method?(resource.methods)
    end)
  end

  defp has_media_upload_method?(methods) do
    Enum.any?(methods, fn {_name, method} ->
      method.supportsMediaUpload
    end)
  end

  def build_property(token, model, name, schema) do
    context =
      ResourceContext.empty()
      |> ResourceContext.with_namespace(token.namespace)
      |> ResourceContext.with_property(name)

    type = Type.from_schema(schema, context)

    %Property{
      name: name,
      description: schema.description,
      required: schema.required,
      default: schema.default,
      type: type
    }
  end
end
