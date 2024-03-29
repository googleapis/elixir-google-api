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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse do
  @moduledoc """
  Response message for listing notification configs for a customer.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `telemetryNotificationConfigs` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationConfig.t)`, *default:* `nil`) - The telemetry notification configs from the specified customer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :telemetryNotificationConfigs =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationConfig.t()
            )
            | nil
        }

  field(:nextPageToken)

  field(:telemetryNotificationConfigs,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationConfig,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
