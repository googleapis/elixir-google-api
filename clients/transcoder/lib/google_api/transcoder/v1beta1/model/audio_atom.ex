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

defmodule GoogleApi.Transcoder.V1beta1.Model.AudioAtom do
  @moduledoc """
  The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.

  ## Attributes

  *   `channels` (*type:* `list(GoogleApi.Transcoder.V1beta1.Model.AudioChannel.t)`, *default:* `nil`) - List of `Channel`s for this audio stream. for in-depth explanation.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. The `EditAtom.key` that references the atom with audio inputs in the `Job.edit_list`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channels => list(GoogleApi.Transcoder.V1beta1.Model.AudioChannel.t()) | nil,
          :key => String.t() | nil
        }

  field(:channels, as: GoogleApi.Transcoder.V1beta1.Model.AudioChannel, type: :list)
  field(:key)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1beta1.Model.AudioAtom do
  def decode(value, options) do
    GoogleApi.Transcoder.V1beta1.Model.AudioAtom.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1beta1.Model.AudioAtom do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
