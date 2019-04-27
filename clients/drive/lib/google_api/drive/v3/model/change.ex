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

defmodule GoogleApi.Drive.V3.Model.Change do
  @moduledoc """
  A change to a file or shared drive.

  ## Attributes

  - changeType (String.t): The type of the change. Possible values are file and drive. Defaults to: `null`.
  - drive (Drive): The updated state of the shared drive. Present if the changeType is drive, the user is still a member of the shared drive, and the shared drive has not been deleted. Defaults to: `null`.
  - driveId (String.t): The ID of the shared drive associated with this change. Defaults to: `null`.
  - file (File): The updated state of the file. Present if the type is file and the file has not been removed from this list of changes. Defaults to: `null`.
  - fileId (String.t): The ID of the file which has changed. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;drive#change\&quot;. Defaults to: `null`.
  - removed (boolean()): Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access. Defaults to: `null`.
  - teamDrive (TeamDrive): Deprecated - use drive instead. Defaults to: `null`.
  - teamDriveId (String.t): Deprecated - use driveId instead. Defaults to: `null`.
  - time (DateTime.t): The time of this change (RFC 3339 date-time). Defaults to: `null`.
  - type (String.t): Deprecated - use changeType instead. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :changeType => any(),
          :drive => GoogleApi.Drive.V3.Model.Drive.t(),
          :driveId => any(),
          :file => GoogleApi.Drive.V3.Model.File.t(),
          :fileId => any(),
          :kind => any(),
          :removed => any(),
          :teamDrive => GoogleApi.Drive.V3.Model.TeamDrive.t(),
          :teamDriveId => any(),
          :time => DateTime.t(),
          :type => any()
        }

  field(:changeType)
  field(:drive, as: GoogleApi.Drive.V3.Model.Drive)
  field(:driveId)
  field(:file, as: GoogleApi.Drive.V3.Model.File)
  field(:fileId)
  field(:kind)
  field(:removed)
  field(:teamDrive, as: GoogleApi.Drive.V3.Model.TeamDrive)
  field(:teamDriveId)
  field(:time, as: DateTime)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.Change do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.Change.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.Change do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
