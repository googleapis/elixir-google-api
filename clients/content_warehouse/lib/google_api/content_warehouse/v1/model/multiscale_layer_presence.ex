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

defmodule GoogleApi.ContentWarehouse.V1.Model.MultiscaleLayerPresence do
  @moduledoc """
  Defines the presence of a layer (previously called "scale").

  ## Attributes

  *   `implicitLength` (*type:* `integer()`, *default:* `nil`) - If the layer is not materialized but things point into it, this gives the effective length.
  *   `present` (*type:* `boolean()`, *default:* `nil`) - Whether the layer is present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :implicitLength => integer() | nil,
          :present => boolean() | nil
        }

  field(:implicitLength)
  field(:present)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.MultiscaleLayerPresence do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.MultiscaleLayerPresence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.MultiscaleLayerPresence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end