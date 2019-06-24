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

defmodule GoogleApi.AndroidPublisher.V3.Model.InternalAppSharingArtifact do
  @moduledoc """
  An artifact resource which gets created when uploading an APK or Android App Bundle through internal app sharing.

  ## Attributes

  *   `certificateFingerprint` (*type:* `String.t`, *default:* `nil`) - The SHA256 fingerprint of the certificate used to signed the generated artifact.
  *   `downloadUrl` (*type:* `String.t`, *default:* `nil`) - The download URL generated for the uploaded artifact. Users that are authorized to download can follow the link to the Play Store app to install it.
  *   `sha256` (*type:* `String.t`, *default:* `nil`) - The SHA-256 hash of the artifact represented as a lowercase hexadecimal number, matching the output of the sha256sum command.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateFingerprint => String.t(),
          :downloadUrl => String.t(),
          :sha256 => String.t()
        }

  field(:certificateFingerprint)
  field(:downloadUrl)
  field(:sha256)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.InternalAppSharingArtifact do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.InternalAppSharingArtifact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.InternalAppSharingArtifact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
