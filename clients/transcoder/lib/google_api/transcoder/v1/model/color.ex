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

defmodule GoogleApi.Transcoder.V1.Model.Color do
  @moduledoc """
  Color preprocessing configuration. **Note:** This configuration is not supported.

  ## Attributes

  *   `brightness` (*type:* `float()`, *default:* `nil`) - Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness and 1 is maximum brightness. 0 is no change. The default is 0.
  *   `contrast` (*type:* `float()`, *default:* `nil`) - Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The default is 0.
  *   `saturation` (*type:* `float()`, *default:* `nil`) - Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desaturated and 1 is maximum saturation. 0 is no change. The default is 0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brightness => float() | nil,
          :contrast => float() | nil,
          :saturation => float() | nil
        }

  field(:brightness)
  field(:contrast)
  field(:saturation)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.Color do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.Color.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.Color do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
