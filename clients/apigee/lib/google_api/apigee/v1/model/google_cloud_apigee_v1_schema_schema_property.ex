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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaProperty do
  @moduledoc """
  Message type for schema property

  ## Attributes

  *   `createTime` (*type:* `String.t`, *default:* `nil`) - Creation time of the field
  *   `custom` (*type:* `String.t`, *default:* `nil`) - Custom is a flag signifying if the field was provided as part of the standard dataset or a custom field created by the customer
  *   `type` (*type:* `String.t`, *default:* `nil`) - Data type of the field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => String.t(),
          :custom => String.t(),
          :type => String.t()
        }

  field(:createTime)
  field(:custom)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaProperty do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SchemaSchemaProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
