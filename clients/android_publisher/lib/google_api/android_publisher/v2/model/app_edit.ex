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

defmodule GoogleApi.AndroidPublisher.V2.Model.AppEdit do
  @moduledoc """
  Represents an edit of an app. An edit allows clients to make multiple changes before committing them in one operation.

  ## Attributes

  *   `expiryTimeSeconds` (*type:* `String.t`, *default:* `nil`) - The time at which the edit will expire and will be no longer valid for use in any subsequent API calls (encoded as seconds since the Epoch).
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the edit that can be used in subsequent API calls.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expiryTimeSeconds => String.t(),
          :id => String.t()
        }

  field(:expiryTimeSeconds)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.AppEdit do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.AppEdit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.AppEdit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
