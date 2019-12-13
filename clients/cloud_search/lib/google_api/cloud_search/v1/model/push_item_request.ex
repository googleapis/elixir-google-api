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

defmodule GoogleApi.CloudSearch.V1.Model.PushItemRequest do
  @moduledoc """


  ## Attributes

  *   `connectorName` (*type:* `String.t`, *default:* `nil`) - Name of connector making this call.
      <br />Format: datasources/{source_id}/connectors/{ID}
  *   `debugOptions` (*type:* `GoogleApi.CloudSearch.V1.Model.DebugOptions.t`, *default:* `nil`) - Common debug options.
  *   `item` (*type:* `GoogleApi.CloudSearch.V1.Model.PushItem.t`, *default:* `nil`) - Item to push onto the queue.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectorName => String.t(),
          :debugOptions => GoogleApi.CloudSearch.V1.Model.DebugOptions.t(),
          :item => GoogleApi.CloudSearch.V1.Model.PushItem.t()
        }

  field(:connectorName)
  field(:debugOptions, as: GoogleApi.CloudSearch.V1.Model.DebugOptions)
  field(:item, as: GoogleApi.CloudSearch.V1.Model.PushItem)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.PushItemRequest do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.PushItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.PushItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
