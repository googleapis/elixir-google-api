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

defmodule GoogleApi.DriveActivity.V2.Model.Owner do
  @moduledoc """
  Information about the owner of a Drive item.

  ## Attributes

  *   `domain` (*type:* `GoogleApi.DriveActivity.V2.Model.Domain.t`, *default:* `nil`) - The domain of the Drive item owner.
  *   `drive` (*type:* `GoogleApi.DriveActivity.V2.Model.DriveReference.t`, *default:* `nil`) - The drive that owns the item.
  *   `teamDrive` (*type:* `GoogleApi.DriveActivity.V2.Model.TeamDriveReference.t`, *default:* `nil`) - This field is deprecated; please use the `drive` field instead.
  *   `user` (*type:* `GoogleApi.DriveActivity.V2.Model.User.t`, *default:* `nil`) - The user that owns the Drive item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domain => GoogleApi.DriveActivity.V2.Model.Domain.t(),
          :drive => GoogleApi.DriveActivity.V2.Model.DriveReference.t(),
          :teamDrive => GoogleApi.DriveActivity.V2.Model.TeamDriveReference.t(),
          :user => GoogleApi.DriveActivity.V2.Model.User.t()
        }

  field(:domain, as: GoogleApi.DriveActivity.V2.Model.Domain)
  field(:drive, as: GoogleApi.DriveActivity.V2.Model.DriveReference)
  field(:teamDrive, as: GoogleApi.DriveActivity.V2.Model.TeamDriveReference)
  field(:user, as: GoogleApi.DriveActivity.V2.Model.User)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.Owner do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.Owner.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.Owner do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
