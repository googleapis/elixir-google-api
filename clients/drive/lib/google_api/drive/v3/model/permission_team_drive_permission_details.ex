# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails do
  @moduledoc """


  ## Attributes

  - inherited (boolean()): Whether this permission is inherited. This field is always populated. This is an output-only field. Defaults to: `null`.
  - inheritedFrom (String.t): The ID of the item from which this permission is inherited. This is an output-only field and is only populated for members of the Team Drive. Defaults to: `null`.
  - role (String.t): The primary role for this user. While new values may be added in the future, the following are currently possible:   - organizer  - writer  - commenter  - reader Defaults to: `null`.
  - teamDrivePermissionType (String.t): The Team Drive permission type for this user. While new values may be added in future, the following are currently possible:   - file  - member Defaults to: `null`.
  """

  defstruct [
    :inherited,
    :inheritedFrom,
    :role,
    :teamDrivePermissionType
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails do
  def encode(value, options) do
    GoogleApi.Drive.V3.Deserializer.serialize_non_nil(value, options)
  end
end
