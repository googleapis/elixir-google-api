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

defmodule GoogleApi.Drive.V3.Model.User do
  @moduledoc """
  Information about a Drive user.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A plain text displayable name for this user.
  *   `emailAddress` (*type:* `String.t`, *default:* `nil`) - The email address of the user. This may not be present in certain contexts if the user has not made their email address visible to the requester.
  *   `kind` (*type:* `String.t`, *default:* `drive#user`) - Identifies what kind of resource this is. Value: the fixed string "drive#user".
  *   `me` (*type:* `boolean()`, *default:* `nil`) - Whether this user is the requesting user.
  *   `permissionId` (*type:* `String.t`, *default:* `nil`) - The user's ID as visible in Permission resources.
  *   `photoLink` (*type:* `String.t`, *default:* `nil`) - A link to the user's profile photo, if available.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :emailAddress => String.t(),
          :kind => String.t(),
          :me => boolean(),
          :permissionId => String.t(),
          :photoLink => String.t()
        }

  field(:displayName)
  field(:emailAddress)
  field(:kind)
  field(:me)
  field(:permissionId)
  field(:photoLink)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.User do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
