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

defmodule GoogleApi.WalletObjects.V1.Model.DeviceContext do
  @moduledoc """
  Device context associated with the object.

  ## Attributes

  *   `deviceToken` (*type:* `String.t`, *default:* `nil`) - If set, redemption information will only be returned to the given device upon activation of the object. This should not be used as a stable identifier to trace a user's device. It can change across different passes for the same device or even across different activations for the same device. When setting this, callers must also set has_linked_device on the object being activated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceToken => String.t() | nil
        }

  field(:deviceToken)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.DeviceContext do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.DeviceContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.DeviceContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end