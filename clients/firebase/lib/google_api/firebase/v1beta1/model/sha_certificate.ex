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

defmodule GoogleApi.Firebase.V1beta1.Model.ShaCertificate do
  @moduledoc """
  A SHA-1 or SHA-256 certificate associated with the AndroidApp.

  ## Attributes

  *   `certType` (*type:* `String.t`, *default:* `nil`) - The SHA certificate type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully qualified resource name of the `sha-key`, in the format:
      <br><code>projects/<var>projectId</var>/androidApps/<var>appId</var>/sha/<var>shaId</var></code>
  *   `shaHash` (*type:* `String.t`, *default:* `nil`) - The certificate hash for the App.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certType => String.t(),
          :name => String.t(),
          :shaHash => String.t()
        }

  field(:certType)
  field(:name)
  field(:shaHash)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.ShaCertificate do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.ShaCertificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.ShaCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
