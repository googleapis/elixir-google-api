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

defmodule GoogleApi.Vision.V1.Model.PurgeProductsRequest do
  @moduledoc """
  Request message for the `PurgeProducts` method.

  ## Attributes

  *   `deleteOrphanProducts` (*type:* `boolean()`, *default:* `nil`) - If delete_orphan_products is true, all Products that are not in any ProductSet will be deleted.
  *   `force` (*type:* `boolean()`, *default:* `nil`) - The default value is false. Override this value to true to actually perform the purge.
  *   `productSetPurgeConfig` (*type:* `GoogleApi.Vision.V1.Model.ProductSetPurgeConfig.t`, *default:* `nil`) - Specify which ProductSet contains the Products to be deleted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleteOrphanProducts => boolean() | nil,
          :force => boolean() | nil,
          :productSetPurgeConfig => GoogleApi.Vision.V1.Model.ProductSetPurgeConfig.t() | nil
        }

  field(:deleteOrphanProducts)
  field(:force)
  field(:productSetPurgeConfig, as: GoogleApi.Vision.V1.Model.ProductSetPurgeConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.PurgeProductsRequest do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.PurgeProductsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.PurgeProductsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
