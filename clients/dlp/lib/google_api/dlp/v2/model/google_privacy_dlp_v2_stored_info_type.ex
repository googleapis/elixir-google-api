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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoType do
  @moduledoc """
  StoredInfoType resource message that contains information about the current
  version and any pending updates.

  ## Attributes

  *   `currentVersion` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeVersion.t`, *default:* `nil`) - Current version of the stored info type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name.
  *   `pendingVersions` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeVersion.t)`, *default:* `nil`) - Pending versions of the stored info type. Empty if no versions are
      pending.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentVersion => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeVersion.t(),
          :name => String.t(),
          :pendingVersions =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeVersion.t())
        }

  field(:currentVersion, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeVersion)
  field(:name)

  field(:pendingVersions,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeVersion,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoType do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
