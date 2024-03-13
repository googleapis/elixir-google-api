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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphqlDocumentation do
  @moduledoc """
  GraphQL documentation for a catalog item.

  ## Attributes

  *   `endpointUri` (*type:* `String.t`, *default:* `nil`) - Required. The GraphQL endpoint URI to be queried by API consumers. Max length is 2,083 characters.
  *   `schema` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DocumentationFile.t`, *default:* `nil`) - Required. The documentation file contents for the GraphQL schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpointUri => String.t() | nil,
          :schema => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DocumentationFile.t() | nil
        }

  field(:endpointUri)
  field(:schema, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DocumentationFile)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphqlDocumentation do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphqlDocumentation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphqlDocumentation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end