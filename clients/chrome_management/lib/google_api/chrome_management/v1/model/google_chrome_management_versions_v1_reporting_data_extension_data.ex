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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData do
  @moduledoc """
  Information of an extension installed on a Chrome browser profile.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. Description of the extension.
  *   `extensionId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the extension.
  *   `extensionType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the extension.
  *   `homepageUri` (*type:* `String.t`, *default:* `nil`) - Output only. The URL of the homepage of the extension.
  *   `installationType` (*type:* `String.t`, *default:* `nil`) - Output only. Installation type of the extension.
  *   `isDisabled` (*type:* `boolean()`, *default:* `nil`) - Output only. Represents whether the user disabled the extension.
  *   `isWebstoreExtension` (*type:* `boolean()`, *default:* `nil`) - Output only. Represents whether the extension is from the webstore.
  *   `manifestVersion` (*type:* `integer()`, *default:* `nil`) - Output only. Manifest version of the extension.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the extension.
  *   `permissions` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Permissions requested by the extension.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Output only. Version of the extension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :extensionId => String.t() | nil,
          :extensionType => String.t() | nil,
          :homepageUri => String.t() | nil,
          :installationType => String.t() | nil,
          :isDisabled => boolean() | nil,
          :isWebstoreExtension => boolean() | nil,
          :manifestVersion => integer() | nil,
          :name => String.t() | nil,
          :permissions => list(String.t()) | nil,
          :version => String.t() | nil
        }

  field(:description)
  field(:extensionId)
  field(:extensionType)
  field(:homepageUri)
  field(:installationType)
  field(:isDisabled)
  field(:isWebstoreExtension)
  field(:manifestVersion)
  field(:name)
  field(:permissions, type: :list)
  field(:version)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataExtensionData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
