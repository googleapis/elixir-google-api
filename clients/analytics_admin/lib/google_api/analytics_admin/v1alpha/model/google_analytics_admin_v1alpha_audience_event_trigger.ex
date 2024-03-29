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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger do
  @moduledoc """
  Specifies an event to log when a user joins the Audience.

  ## Attributes

  *   `eventName` (*type:* `String.t`, *default:* `nil`) - Required. The event name that will be logged.
  *   `logCondition` (*type:* `String.t`, *default:* `nil`) - Required. When to log the event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventName => String.t() | nil,
          :logCondition => String.t() | nil
        }

  field(:eventName)
  field(:logCondition)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
