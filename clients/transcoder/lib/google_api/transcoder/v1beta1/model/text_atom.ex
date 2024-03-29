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

defmodule GoogleApi.Transcoder.V1beta1.Model.TextAtom do
  @moduledoc """
  The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.

  ## Attributes

  *   `inputs` (*type:* `list(GoogleApi.Transcoder.V1beta1.Model.TextInput.t)`, *default:* `nil`) - List of `Job.inputs` that should be embedded in this atom. Only one input is supported.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. The `EditAtom.key` that references atom with text inputs in the `Job.edit_list`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputs => list(GoogleApi.Transcoder.V1beta1.Model.TextInput.t()) | nil,
          :key => String.t() | nil
        }

  field(:inputs, as: GoogleApi.Transcoder.V1beta1.Model.TextInput, type: :list)
  field(:key)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1beta1.Model.TextAtom do
  def decode(value, options) do
    GoogleApi.Transcoder.V1beta1.Model.TextAtom.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1beta1.Model.TextAtom do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
