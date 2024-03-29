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

defmodule GoogleApi.ContentWarehouse.V1.Model.WWWDocInfoRelatedImages do
  @moduledoc """
  Return related images.

  ## Attributes

  *   `imageDocid` (*type:* `String.t`, *default:* `nil`) - 
  *   `thumbHeight` (*type:* `integer()`, *default:* `nil`) - 
  *   `thumbType` (*type:* `String.t`, *default:* `nil`) - 
  *   `thumbWidth` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageDocid => String.t() | nil,
          :thumbHeight => integer() | nil,
          :thumbType => String.t() | nil,
          :thumbWidth => integer() | nil
        }

  field(:imageDocid)
  field(:thumbHeight)
  field(:thumbType)
  field(:thumbWidth)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.WWWDocInfoRelatedImages do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.WWWDocInfoRelatedImages.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.WWWDocInfoRelatedImages do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
