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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings do
  @moduledoc """
  Settings values for data retention. This is a singleton resource.

  ## Attributes

  *   `eventDataRetention` (*type:* `String.t`, *default:* `nil`) - Required. The length of time that event-level data is retained.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name for this DataRetentionSetting resource. Format: properties/{property}/dataRetentionSettings
  *   `resetUserDataOnNewActivity` (*type:* `boolean()`, *default:* `nil`) - If true, reset the retention period for the user identifier with every event from that user.
  *   `userDataRetention` (*type:* `String.t`, *default:* `nil`) - Required. The length of time that user-level data is retained.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventDataRetention => String.t() | nil,
          :name => String.t() | nil,
          :resetUserDataOnNewActivity => boolean() | nil,
          :userDataRetention => String.t() | nil
        }

  field(:eventDataRetention)
  field(:name)
  field(:resetUserDataOnNewActivity)
  field(:userDataRetention)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
