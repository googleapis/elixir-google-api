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

defmodule GoogleApi.ContentWarehouse.V1.Model.FreebasePropertyValue do
  @moduledoc """
  A PropertyValue associates properties with values in the context of a topic.

  ## Attributes

  *   `property` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseId.t`, *default:* `nil`) - The id of the property.
  *   `totalValueCount` (*type:* `String.t`, *default:* `nil`) - Indicates the total values that exist for this property, even if they aren't all present in the value field, due to truncation.
  *   `value` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.FreebaseValue.t)`, *default:* `nil`) - The value associated with the property for the containing topic.
  *   `valueStatus` (*type:* `String.t`, *default:* `nil`) - If ValueStatus is not set at all, the implication is that there are well-known value(s), specified in the "value" field. (It should be considered malformed data to have value_status set when len(values) > 0.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :property => GoogleApi.ContentWarehouse.V1.Model.FreebaseId.t() | nil,
          :totalValueCount => String.t() | nil,
          :value => list(GoogleApi.ContentWarehouse.V1.Model.FreebaseValue.t()) | nil,
          :valueStatus => String.t() | nil
        }

  field(:property, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseId)
  field(:totalValueCount)
  field(:value, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseValue, type: :list)
  field(:valueStatus)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FreebasePropertyValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FreebasePropertyValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FreebasePropertyValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
