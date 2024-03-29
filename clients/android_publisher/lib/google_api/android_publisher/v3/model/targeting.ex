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

defmodule GoogleApi.AndroidPublisher.V3.Model.Targeting do
  @moduledoc """
  Targeting details for a recovery action such as regions, android sdk levels, app versions etc.

  ## Attributes

  *   `allUsers` (*type:* `GoogleApi.AndroidPublisher.V3.Model.AllUsers.t`, *default:* `nil`) - All users are targeted.
  *   `androidSdks` (*type:* `GoogleApi.AndroidPublisher.V3.Model.AndroidSdks.t`, *default:* `nil`) - Targeting is based on android api levels of devices.
  *   `regions` (*type:* `GoogleApi.AndroidPublisher.V3.Model.Regions.t`, *default:* `nil`) - Targeting is based on the user account region.
  *   `versionList` (*type:* `GoogleApi.AndroidPublisher.V3.Model.AppVersionList.t`, *default:* `nil`) - Target version codes as a list.
  *   `versionRange` (*type:* `GoogleApi.AndroidPublisher.V3.Model.AppVersionRange.t`, *default:* `nil`) - Target version codes as a range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allUsers => GoogleApi.AndroidPublisher.V3.Model.AllUsers.t() | nil,
          :androidSdks => GoogleApi.AndroidPublisher.V3.Model.AndroidSdks.t() | nil,
          :regions => GoogleApi.AndroidPublisher.V3.Model.Regions.t() | nil,
          :versionList => GoogleApi.AndroidPublisher.V3.Model.AppVersionList.t() | nil,
          :versionRange => GoogleApi.AndroidPublisher.V3.Model.AppVersionRange.t() | nil
        }

  field(:allUsers, as: GoogleApi.AndroidPublisher.V3.Model.AllUsers)
  field(:androidSdks, as: GoogleApi.AndroidPublisher.V3.Model.AndroidSdks)
  field(:regions, as: GoogleApi.AndroidPublisher.V3.Model.Regions)
  field(:versionList, as: GoogleApi.AndroidPublisher.V3.Model.AppVersionList)
  field(:versionRange, as: GoogleApi.AndroidPublisher.V3.Model.AppVersionRange)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Targeting do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Targeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Targeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
