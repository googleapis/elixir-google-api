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

defmodule GoogleApi.WalletObjects.V1.Model.ImageModuleData do
  @moduledoc """


  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID associated with an image module. This field is here to enable ease of management of image modules.
  *   `mainImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - A 100% width image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :mainImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil
        }

  field(:id)
  field(:mainImage, as: GoogleApi.WalletObjects.V1.Model.Image)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.ImageModuleData do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.ImageModuleData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.ImageModuleData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
