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

defmodule GoogleApi.WalletObjects.V1.Model.ActivationOptions do
  @moduledoc """
  ActivationOptions for the class

  ## Attributes

  *   `activationUrl` (*type:* `String.t`, *default:* `nil`) - HTTPS URL that supports REST semantics. Would be used for requesting activation from partners for given valuable, triggered by the users.
  *   `allowReactivation` (*type:* `boolean()`, *default:* `nil`) - Flag to allow users to make activation call from different device. This allows client to render the activation button enabled even if the activationStatus is ACTIVATED but the requested device is different than the current device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationUrl => String.t() | nil,
          :allowReactivation => boolean() | nil
        }

  field(:activationUrl)
  field(:allowReactivation)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.ActivationOptions do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.ActivationOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.ActivationOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
