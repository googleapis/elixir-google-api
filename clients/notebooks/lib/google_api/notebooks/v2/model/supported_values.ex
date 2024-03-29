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

defmodule GoogleApi.Notebooks.V2.Model.SupportedValues do
  @moduledoc """
  SupportedValues represents the values supported by the configuration.

  ## Attributes

  *   `acceleratorTypes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The accelerator types supported by WbI.
  *   `machineTypes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The machine types supported by WbI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorTypes => list(String.t()) | nil,
          :machineTypes => list(String.t()) | nil
        }

  field(:acceleratorTypes, type: :list)
  field(:machineTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V2.Model.SupportedValues do
  def decode(value, options) do
    GoogleApi.Notebooks.V2.Model.SupportedValues.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V2.Model.SupportedValues do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
