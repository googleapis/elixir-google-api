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

defmodule GoogleApi.Transcoder.V1.Model.YadifConfig do
  @moduledoc """
  Yet Another Deinterlacing Filter Configuration.

  ## Attributes

  *   `deinterlaceAllFrames` (*type:* `boolean()`, *default:* `nil`) - Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  *   `disableSpatialInterlacing` (*type:* `boolean()`, *default:* `nil`) - Disable spacial interlacing. The default is `false`.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  *   `parity` (*type:* `String.t`, *default:* `nil`) - The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deinterlaceAllFrames => boolean() | nil,
          :disableSpatialInterlacing => boolean() | nil,
          :mode => String.t() | nil,
          :parity => String.t() | nil
        }

  field(:deinterlaceAllFrames)
  field(:disableSpatialInterlacing)
  field(:mode)
  field(:parity)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.YadifConfig do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.YadifConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.YadifConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
