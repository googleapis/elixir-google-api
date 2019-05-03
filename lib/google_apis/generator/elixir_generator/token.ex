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
          :rest_description => RestDescription.t(),
          :models => list(Model.t()),
          :models_by_name => %{String.t() => Model.t()},
          :global_optional_parameters => list(Parameter.t())
        }

  defstruct [
    :filename,
    :library_name,
    :namespace,
    :base_dir,
    :rest_description,
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

    %__MODULE__{
      filename: filename,
      library_name: library_name,
      namespace: namespace,
      base_dir: base_dir,
      rest_description: rest_description
    }
  end

  def build_property(token, model, name, schema) do
    type =
      Type.from_schema(schema, %ResourceContext{
        namespace: token.namespace,
        model: model,
        property: name
      })

    %Property{
      name: name,
      description: schema.description,
      required: schema.required,
      default: schema.default,
      type: type
    }
  end
end
