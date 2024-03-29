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

defmodule GoogleApi.Transcoder.V1beta1.Model.TextInput do
  @moduledoc """
  Identifies which input file and track should be used.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. The `Input.key` that identifies the input file.
  *   `track` (*type:* `integer()`, *default:* `nil`) - Required. The zero-based index of the track in the input file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :track => integer() | nil
        }

  field(:key)
  field(:track)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1beta1.Model.TextInput do
  def decode(value, options) do
    GoogleApi.Transcoder.V1beta1.Model.TextInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1beta1.Model.TextInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
