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

defmodule GoogleApi.CloudIdentity.V1.Model.UserInvitation do
  @moduledoc """
  The `UserInvitation` resource represents an email that can be sent to an unmanaged user account inviting them to join the customer's Google Workspace or Cloud Identity account. An unmanaged account shares an email address domain with the Google Workspace or Cloud Identity account but is not managed by it yet. If the user accepts the `UserInvitation`, the user account will become managed.

  ## Attributes

  *   `mailsSentCount` (*type:* `String.t`, *default:* `nil`) - Number of invitation emails sent to the user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Shall be of the form `customers/{customer}/userinvitations/{user_email_address}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of the `UserInvitation`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the `UserInvitation` was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mailsSentCount => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:mailsSentCount)
  field(:name)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.UserInvitation do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.UserInvitation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.UserInvitation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
