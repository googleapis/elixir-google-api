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

defmodule GoogleApi.Chat.V1.Model.Inputs do
  @moduledoc """
  The inputs with widgets.

  ## Attributes

  *   `dateInput` (*type:* `GoogleApi.Chat.V1.Model.DateInput.t`, *default:* `nil`) - 
  *   `dateTimeInput` (*type:* `GoogleApi.Chat.V1.Model.DateTimeInput.t`, *default:* `nil`) - 
  *   `stringInputs` (*type:* `GoogleApi.Chat.V1.Model.StringInputs.t`, *default:* `nil`) - 
  *   `timeInput` (*type:* `GoogleApi.Chat.V1.Model.TimeInput.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateInput => GoogleApi.Chat.V1.Model.DateInput.t() | nil,
          :dateTimeInput => GoogleApi.Chat.V1.Model.DateTimeInput.t() | nil,
          :stringInputs => GoogleApi.Chat.V1.Model.StringInputs.t() | nil,
          :timeInput => GoogleApi.Chat.V1.Model.TimeInput.t() | nil
        }

  field(:dateInput, as: GoogleApi.Chat.V1.Model.DateInput)
  field(:dateTimeInput, as: GoogleApi.Chat.V1.Model.DateTimeInput)
  field(:stringInputs, as: GoogleApi.Chat.V1.Model.StringInputs)
  field(:timeInput, as: GoogleApi.Chat.V1.Model.TimeInput)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Inputs do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Inputs.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Inputs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
