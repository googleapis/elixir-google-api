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

defmodule GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput do
  @moduledoc """
  Contains text input to be synthesized. Either `text` or `ssml` must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 characters.

  ## Attributes

  *   `ssml` (*type:* `String.t`, *default:* `nil`) - The SSML document to be synthesized. The SSML document must be valid and well-formed. Otherwise the RPC will fail and return google.rpc.Code.INVALID_ARGUMENT. For more information, see [SSML](https://cloud.google.com/text-to-speech/docs/ssml).
  *   `text` (*type:* `String.t`, *default:* `nil`) - The raw text to be synthesized.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ssml => String.t() | nil,
          :text => String.t() | nil
        }

  field(:ssml)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
