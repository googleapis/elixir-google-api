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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2SecretVolumeSource do
  @moduledoc """
  The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret.

  ## Attributes

  *   `defaultMode` (*type:* `integer()`, *default:* `nil`) - Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0644. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. This might be in conflict with other options that affect the file mode, like fsGroup, and as a result, other mode bits could be set.
  *   `items` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2VersionToPath.t)`, *default:* `nil`) - If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.
  *   `secret` (*type:* `String.t`, *default:* `nil`) - Required. The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultMode => integer() | nil,
          :items => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2VersionToPath.t()) | nil,
          :secret => String.t() | nil
        }

  field(:defaultMode)
  field(:items, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2VersionToPath, type: :list)
  field(:secret)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2SecretVolumeSource do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2SecretVolumeSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2SecretVolumeSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
