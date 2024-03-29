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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1Value do
  @moduledoc """
  Data type and value of a parameter.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Represents a boolean value.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - Represents a double value.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - Represents an int64 value.
  *   `protoValue` (*type:* `map()`, *default:* `nil`) - Represents an 'Any' proto value.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Represents a string value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :doubleValue => float() | nil,
          :int64Value => String.t() | nil,
          :protoValue => map() | nil,
          :stringValue => String.t() | nil
        }

  field(:boolValue)
  field(:doubleValue)
  field(:int64Value)
  field(:protoValue, type: :map)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1Value do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
