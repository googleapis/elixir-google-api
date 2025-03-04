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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionVideo do
  @moduledoc """
  Video

  ## Attributes

  *   `encodedVideo` (*type:* `String.t`, *default:* `nil`) - Base 64 encoded video bytes.
  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Video encoding, for example "video/mp4".
  *   `text` (*type:* `String.t`, *default:* `nil`) - Text/Expanded text input for Help Me Write.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Path to another storage (typically Google Cloud Storage).
  *   `video` (*type:* `String.t`, *default:* `nil`) - Raw bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encodedVideo => String.t() | nil,
          :encoding => String.t() | nil,
          :text => String.t() | nil,
          :uri => String.t() | nil,
          :video => String.t() | nil
        }

  field(:encodedVideo)
  field(:encoding)
  field(:text)
  field(:uri)
  field(:video)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionVideo do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionVideo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionVideo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
