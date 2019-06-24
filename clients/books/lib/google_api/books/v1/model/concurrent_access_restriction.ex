# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Model.ConcurrentAccessRestriction do
  @moduledoc """


  ## Attributes

  *   `deviceAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether access is granted for this (user, device, volume).
  *   `kind` (*type:* `String.t`, *default:* `books#concurrentAccessRestriction`) - Resource type.
  *   `maxConcurrentDevices` (*type:* `integer()`, *default:* `nil`) - The maximum number of concurrent access licenses for this volume.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Error/warning message.
  *   `nonce` (*type:* `String.t`, *default:* `nil`) - Client nonce for verification. Download access and client-validation only.
  *   `reasonCode` (*type:* `String.t`, *default:* `nil`) - Error/warning reason code.
  *   `restricted` (*type:* `boolean()`, *default:* `nil`) - Whether this volume has any concurrent access restrictions.
  *   `signature` (*type:* `String.t`, *default:* `nil`) - Response signature.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Client app identifier for verification. Download access and client-validation only.
  *   `timeWindowSeconds` (*type:* `integer()`, *default:* `nil`) - Time in seconds for license auto-expiration.
  *   `volumeId` (*type:* `String.t`, *default:* `nil`) - Identifies the volume for which this entry applies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceAllowed => boolean(),
          :kind => String.t(),
          :maxConcurrentDevices => integer(),
          :message => String.t(),
          :nonce => String.t(),
          :reasonCode => String.t(),
          :restricted => boolean(),
          :signature => String.t(),
          :source => String.t(),
          :timeWindowSeconds => integer(),
          :volumeId => String.t()
        }

  field(:deviceAllowed)
  field(:kind)
  field(:maxConcurrentDevices)
  field(:message)
  field(:nonce)
  field(:reasonCode)
  field(:restricted)
  field(:signature)
  field(:source)
  field(:timeWindowSeconds)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.ConcurrentAccessRestriction do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.ConcurrentAccessRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.ConcurrentAccessRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
