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

defmodule GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaAppBundle do
  @moduledoc """
  Information about the analyzed app bundle.

  ## Attributes

  *   `bundleId` (*type:* `String.t`, *default:* `nil`) - Unique id of the bundle. For example: "com.google.Gmail".
  *   `codeReferenceId` (*type:* `String.t`, *default:* `nil`) - Git commit hash or changelist number associated with the release.
  *   `releaseType` (*type:* `String.t`, *default:* `nil`) - Identifies the type of release.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The user-visible version of the bundle such as the Android `versionName` or iOS `CFBundleShortVersionString`. For example: "7.21.1".
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - The version used throughout the operating system and store to identify the build such as the Android `versionCode` or iOS `CFBundleVersion`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bundleId => String.t() | nil,
          :codeReferenceId => String.t() | nil,
          :releaseType => String.t() | nil,
          :version => String.t() | nil,
          :versionId => String.t() | nil
        }

  field(:bundleId)
  field(:codeReferenceId)
  field(:releaseType)
  field(:version)
  field(:versionId)
end

defimpl Poison.Decoder, for: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaAppBundle do
  def decode(value, options) do
    GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaAppBundle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaAppBundle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
