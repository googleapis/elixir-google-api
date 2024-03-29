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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream do
  @moduledoc """
  Data streams refer to additional data separate from audio and video streams For example: camera motion metadata (see http://go/wally-format) Available tags: 4+

  ## Attributes

  *   `codecFourcc` (*type:* `String.t`, *default:* `nil`) - 
  *   `codecId` (*type:* `String.t`, *default:* `nil`) - Codec information
  *   `streamCodecTag` (*type:* `String.t`, *default:* `nil`) - 
  *   `streamIndex` (*type:* `String.t`, *default:* `nil`) - Index of the stream in the file
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :codecFourcc => String.t() | nil,
          :codecId => String.t() | nil,
          :streamCodecTag => String.t() | nil,
          :streamIndex => String.t() | nil
        }

  field(:codecFourcc)
  field(:codecId)
  field(:streamCodecTag)
  field(:streamIndex)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
