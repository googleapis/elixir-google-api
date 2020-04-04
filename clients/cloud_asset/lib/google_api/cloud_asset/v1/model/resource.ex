# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudAsset.V1.Model.Resource do
  @moduledoc """
  A representation of a Google Cloud resource.

  ## Attributes

  *   `data` (*type:* `map()`, *default:* `nil`) - The content of the resource, in which some sensitive fields are removed
      and may not be present.
  *   `discoveryDocumentUri` (*type:* `String.t`, *default:* `nil`) - The URL of the discovery document containing the resource's JSON schema.
      For example:
      "https://www.googleapis.com/discovery/v1/apis/compute/v1/rest"

      This value is unspecified for resources that do not have an API based on a
      discovery document, such as Cloud Bigtable.
  *   `discoveryName` (*type:* `String.t`, *default:* `nil`) - The JSON schema name listed in the discovery document. For example:
      "Project"

      This value is unspecified for resources that do not have an API based on a
      discovery document, such as Cloud Bigtable.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The full name of the immediate parent of this resource. See
      [Resource
      Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
      for more information.

      For Google Cloud assets, this value is the parent resource defined in the
      [Cloud IAM policy
      hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
      For example:
      "//cloudresourcemanager.googleapis.com/projects/my_project_123"

      For third-party assets, this field may be set differently.
  *   `resourceUrl` (*type:* `String.t`, *default:* `nil`) - The REST URL for accessing the resource. An HTTP `GET` request using this
      URL returns the resource itself. For example:
      "https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123"

      This value is unspecified for resources without a REST API.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The API version. For example: "v1"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => map(),
          :discoveryDocumentUri => String.t(),
          :discoveryName => String.t(),
          :parent => String.t(),
          :resourceUrl => String.t(),
          :version => String.t()
        }

  field(:data, type: :map)
  field(:discoveryDocumentUri)
  field(:discoveryName)
  field(:parent)
  field(:resourceUrl)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.Resource do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
