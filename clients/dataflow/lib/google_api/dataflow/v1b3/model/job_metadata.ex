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

defmodule GoogleApi.Dataflow.V1b3.Model.JobMetadata do
  @moduledoc """
  Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.

  ## Attributes

  *   `bigTableDetails` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.BigTableIODetails.t)`, *default:* `nil`) - Identification of a Cloud Bigtable source used in the Dataflow job.
  *   `bigqueryDetails` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails.t)`, *default:* `nil`) - Identification of a BigQuery source used in the Dataflow job.
  *   `datastoreDetails` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.DatastoreIODetails.t)`, *default:* `nil`) - Identification of a Datastore source used in the Dataflow job.
  *   `fileDetails` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.FileIODetails.t)`, *default:* `nil`) - Identification of a File source used in the Dataflow job.
  *   `pubsubDetails` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.PubSubIODetails.t)`, *default:* `nil`) - Identification of a Pub/Sub source used in the Dataflow job.
  *   `sdkVersion` (*type:* `GoogleApi.Dataflow.V1b3.Model.SdkVersion.t`, *default:* `nil`) - The SDK version used to run the job.
  *   `spannerDetails` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.SpannerIODetails.t)`, *default:* `nil`) - Identification of a Spanner source used in the Dataflow job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigTableDetails => list(GoogleApi.Dataflow.V1b3.Model.BigTableIODetails.t()) | nil,
          :bigqueryDetails => list(GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails.t()) | nil,
          :datastoreDetails => list(GoogleApi.Dataflow.V1b3.Model.DatastoreIODetails.t()) | nil,
          :fileDetails => list(GoogleApi.Dataflow.V1b3.Model.FileIODetails.t()) | nil,
          :pubsubDetails => list(GoogleApi.Dataflow.V1b3.Model.PubSubIODetails.t()) | nil,
          :sdkVersion => GoogleApi.Dataflow.V1b3.Model.SdkVersion.t() | nil,
          :spannerDetails => list(GoogleApi.Dataflow.V1b3.Model.SpannerIODetails.t()) | nil
        }

  field(:bigTableDetails, as: GoogleApi.Dataflow.V1b3.Model.BigTableIODetails, type: :list)
  field(:bigqueryDetails, as: GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails, type: :list)
  field(:datastoreDetails, as: GoogleApi.Dataflow.V1b3.Model.DatastoreIODetails, type: :list)
  field(:fileDetails, as: GoogleApi.Dataflow.V1b3.Model.FileIODetails, type: :list)
  field(:pubsubDetails, as: GoogleApi.Dataflow.V1b3.Model.PubSubIODetails, type: :list)
  field(:sdkVersion, as: GoogleApi.Dataflow.V1b3.Model.SdkVersion)
  field(:spannerDetails, as: GoogleApi.Dataflow.V1b3.Model.SpannerIODetails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.JobMetadata do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.JobMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.JobMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
