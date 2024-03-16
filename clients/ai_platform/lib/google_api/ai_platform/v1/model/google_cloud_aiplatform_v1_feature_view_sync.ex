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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSync do
  @moduledoc """
  FeatureViewSync is a representation of sync operation which copies data from data source to Feature View in Online Store.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this FeatureViewSync is created. Creation of a FeatureViewSync means that the job is pending / waiting for sufficient resources but may not have started the actual data transfer yet.
  *   `finalStatus` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. Final status of the FeatureViewSync.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Name of the FeatureViewSync. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}/featureViewSyncs/{feature_view_sync}`
  *   `runTime` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleTypeInterval.t`, *default:* `nil`) - Output only. Time when this FeatureViewSync is finished.
  *   `syncSummary` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSyncSyncSummary.t`, *default:* `nil`) - Output only. Summary of the sync job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :finalStatus => GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus.t() | nil,
          :name => String.t() | nil,
          :runTime => GoogleApi.AIPlatform.V1.Model.GoogleTypeInterval.t() | nil,
          :syncSummary =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSyncSyncSummary.t()
            | nil
        }

  field(:createTime, as: DateTime)
  field(:finalStatus, as: GoogleApi.AIPlatform.V1.Model.GoogleRpcStatus)
  field(:name)
  field(:runTime, as: GoogleApi.AIPlatform.V1.Model.GoogleTypeInterval)

  field(:syncSummary,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSyncSyncSummary
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSync do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSync.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureViewSync do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end