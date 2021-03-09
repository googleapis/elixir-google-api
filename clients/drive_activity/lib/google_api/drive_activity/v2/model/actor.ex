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

defmodule GoogleApi.DriveActivity.V2.Model.Actor do
  @moduledoc """
  The actor of a Drive activity.

  ## Attributes

  *   `administrator` (*type:* `GoogleApi.DriveActivity.V2.Model.Administrator.t`, *default:* `nil`) - An administrator.
  *   `anonymous` (*type:* `GoogleApi.DriveActivity.V2.Model.AnonymousUser.t`, *default:* `nil`) - An anonymous user.
  *   `impersonation` (*type:* `GoogleApi.DriveActivity.V2.Model.Impersonation.t`, *default:* `nil`) - An account acting on behalf of another.
  *   `system` (*type:* `GoogleApi.DriveActivity.V2.Model.SystemEvent.t`, *default:* `nil`) - A non-user actor (i.e. system triggered).
  *   `user` (*type:* `GoogleApi.DriveActivity.V2.Model.User.t`, *default:* `nil`) - An end user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :administrator => GoogleApi.DriveActivity.V2.Model.Administrator.t() | nil,
          :anonymous => GoogleApi.DriveActivity.V2.Model.AnonymousUser.t() | nil,
          :impersonation => GoogleApi.DriveActivity.V2.Model.Impersonation.t() | nil,
          :system => GoogleApi.DriveActivity.V2.Model.SystemEvent.t() | nil,
          :user => GoogleApi.DriveActivity.V2.Model.User.t() | nil
        }

  field(:administrator, as: GoogleApi.DriveActivity.V2.Model.Administrator)
  field(:anonymous, as: GoogleApi.DriveActivity.V2.Model.AnonymousUser)
  field(:impersonation, as: GoogleApi.DriveActivity.V2.Model.Impersonation)
  field(:system, as: GoogleApi.DriveActivity.V2.Model.SystemEvent)
  field(:user, as: GoogleApi.DriveActivity.V2.Model.User)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.Actor do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.Actor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.Actor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
