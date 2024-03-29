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

defmodule GoogleApi.Forms.V1.Model.Request do
  @moduledoc """
  The kinds of update requests that can be made.

  ## Attributes

  *   `createItem` (*type:* `GoogleApi.Forms.V1.Model.CreateItemRequest.t`, *default:* `nil`) - Create a new item.
  *   `deleteItem` (*type:* `GoogleApi.Forms.V1.Model.DeleteItemRequest.t`, *default:* `nil`) - Delete an item.
  *   `moveItem` (*type:* `GoogleApi.Forms.V1.Model.MoveItemRequest.t`, *default:* `nil`) - Move an item to a specified location.
  *   `updateFormInfo` (*type:* `GoogleApi.Forms.V1.Model.UpdateFormInfoRequest.t`, *default:* `nil`) - Update Form's Info.
  *   `updateItem` (*type:* `GoogleApi.Forms.V1.Model.UpdateItemRequest.t`, *default:* `nil`) - Update an item.
  *   `updateSettings` (*type:* `GoogleApi.Forms.V1.Model.UpdateSettingsRequest.t`, *default:* `nil`) - Updates the Form's settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createItem => GoogleApi.Forms.V1.Model.CreateItemRequest.t() | nil,
          :deleteItem => GoogleApi.Forms.V1.Model.DeleteItemRequest.t() | nil,
          :moveItem => GoogleApi.Forms.V1.Model.MoveItemRequest.t() | nil,
          :updateFormInfo => GoogleApi.Forms.V1.Model.UpdateFormInfoRequest.t() | nil,
          :updateItem => GoogleApi.Forms.V1.Model.UpdateItemRequest.t() | nil,
          :updateSettings => GoogleApi.Forms.V1.Model.UpdateSettingsRequest.t() | nil
        }

  field(:createItem, as: GoogleApi.Forms.V1.Model.CreateItemRequest)
  field(:deleteItem, as: GoogleApi.Forms.V1.Model.DeleteItemRequest)
  field(:moveItem, as: GoogleApi.Forms.V1.Model.MoveItemRequest)
  field(:updateFormInfo, as: GoogleApi.Forms.V1.Model.UpdateFormInfoRequest)
  field(:updateItem, as: GoogleApi.Forms.V1.Model.UpdateItemRequest)
  field(:updateSettings, as: GoogleApi.Forms.V1.Model.UpdateSettingsRequest)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.Request do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.Request.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.Request do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
