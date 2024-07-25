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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryFileStoreConditions do
  @moduledoc """
  Requirements that must be true before a file store is scanned in discovery for the first time. There is an AND relationship between the top-level attributes.

  ## Attributes

  *   `cloudStorageConditions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudStorageConditions.t`, *default:* `nil`) - Optional. Cloud Storage conditions.
  *   `createdAfter` (*type:* `DateTime.t`, *default:* `nil`) - Optional. File store must have been created after this date. Used to avoid backfilling.
  *   `minAge` (*type:* `String.t`, *default:* `nil`) - Optional. Minimum age a file store must have. If set, the value must be 1 hour or greater.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudStorageConditions =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudStorageConditions.t() | nil,
          :createdAfter => DateTime.t() | nil,
          :minAge => String.t() | nil
        }

  field(:cloudStorageConditions,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudStorageConditions
  )

  field(:createdAfter, as: DateTime)
  field(:minAge)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryFileStoreConditions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryFileStoreConditions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryFileStoreConditions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
