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

defmodule GoogleApi.AndroidPublisher.V3.Model.ApkBinary do
  @moduledoc """
  Represents the binary payload of an APK.

  ## Attributes

  *   `sha1` (*type:* `String.t`, *default:* `nil`) - A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum command.
  *   `sha256` (*type:* `String.t`, *default:* `nil`) - A sha256 hash of the APK payload, encoded as a hex string and matching the output of the sha256sum command.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sha1 => String.t(),
          :sha256 => String.t()
        }

  field(:sha1)
  field(:sha256)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.ApkBinary do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.ApkBinary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.ApkBinary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
