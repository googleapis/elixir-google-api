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

defmodule GoogleApi.Keep.V1.Model.Permission do
  @moduledoc """
  A single permission on the note. Associates a `member` with a `role`.

  ## Attributes

  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether this member has been deleted. If the member is recovered, this value is set to false and the recovered member retains the role on the note.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The email associated with the member. If set on create, the `email` field in the `User` or `Group` message must either be empty or match this field. On read, may be unset if the member does not have an associated email.
  *   `family` (*type:* `GoogleApi.Keep.V1.Model.Family.t`, *default:* `nil`) - Output only. The Google Family to which this role applies.
  *   `group` (*type:* `GoogleApi.Keep.V1.Model.Group.t`, *default:* `nil`) - Output only. The group to which this role applies.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role granted by this permission. The role determines the entity’s ability to read, write, and share notes.
  *   `user` (*type:* `GoogleApi.Keep.V1.Model.User.t`, *default:* `nil`) - Output only. The user to whom this role applies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleted => boolean() | nil,
          :email => String.t() | nil,
          :family => GoogleApi.Keep.V1.Model.Family.t() | nil,
          :group => GoogleApi.Keep.V1.Model.Group.t() | nil,
          :name => String.t() | nil,
          :role => String.t() | nil,
          :user => GoogleApi.Keep.V1.Model.User.t() | nil
        }

  field(:deleted)
  field(:email)
  field(:family, as: GoogleApi.Keep.V1.Model.Family)
  field(:group, as: GoogleApi.Keep.V1.Model.Group)
  field(:name)
  field(:role)
  field(:user, as: GoogleApi.Keep.V1.Model.User)
end

defimpl Poison.Decoder, for: GoogleApi.Keep.V1.Model.Permission do
  def decode(value, options) do
    GoogleApi.Keep.V1.Model.Permission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Keep.V1.Model.Permission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
