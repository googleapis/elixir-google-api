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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.ListAttributeMetadataResponse do
  @moduledoc """
  Response for AttributesService.ListAttributeMetadata.

  ## Attributes

  *   `attributeMetadata` (*type:* `list(GoogleApi.MyBusinessBusinessInformation.V1.Model.AttributeMetadata.t)`, *default:* `nil`) - A collection of attribute metadata for the available attributes.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If the number of attributes exceeded the requested page size, this field will be populated with a token to fetch the next page of attributes on a subsequent call to `attributes.list`. If there are no more attributes, this field will not be present in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeMetadata =>
            list(GoogleApi.MyBusinessBusinessInformation.V1.Model.AttributeMetadata.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:attributeMetadata,
    as: GoogleApi.MyBusinessBusinessInformation.V1.Model.AttributeMetadata,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.MyBusinessBusinessInformation.V1.Model.ListAttributeMetadataResponse do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.ListAttributeMetadataResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MyBusinessBusinessInformation.V1.Model.ListAttributeMetadataResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
