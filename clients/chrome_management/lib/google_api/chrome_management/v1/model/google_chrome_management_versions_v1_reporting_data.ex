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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingData do
  @moduledoc """
  Reporting data of a Chrome browser profile.

  ## Attributes

  *   `browserExecutablePath` (*type:* `String.t`, *default:* `nil`) - Output only. Executable path of the installed Chrome browser. A valid path is included only in affiliated profiles.
  *   `extensionData` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData.t)`, *default:* `nil`) - Output only. Information of the extensions installed on the profile.
  *   `extensionPolicyData` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData.t)`, *default:* `nil`) - Output only. Information of the policies applied on the extensions.
  *   `installedBrowserVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Updated version of a browser, if it is different from the active browser version.
  *   `policyData` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData.t)`, *default:* `nil`) - Output only. Information of the policies applied on the profile.
  *   `profilePath` (*type:* `String.t`, *default:* `nil`) - Output only. Path of the profile. A valid path is included only in affiliated profiles.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :browserExecutablePath => String.t() | nil,
          :extensionData =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData.t()
            )
            | nil,
          :extensionPolicyData =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData.t()
            )
            | nil,
          :installedBrowserVersion => String.t() | nil,
          :policyData =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData.t()
            )
            | nil,
          :profilePath => String.t() | nil
        }

  field(:browserExecutablePath)

  field(:extensionData,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData,
    type: :list
  )

  field(:extensionPolicyData,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData,
    type: :list
  )

  field(:installedBrowserVersion)

  field(:policyData,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData,
    type: :list
  )

  field(:profilePath)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingData do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
