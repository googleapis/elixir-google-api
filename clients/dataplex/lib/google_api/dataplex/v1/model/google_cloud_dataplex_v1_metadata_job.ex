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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJob do
  @moduledoc """
  A metadata job resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metadata job was created.
  *   `exportResult` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobExportJobResult.t`, *default:* `nil`) - Output only. Export job result.
  *   `exportSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobExportJobSpec.t`, *default:* `nil`) - Export job specification.
  *   `importResult` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobImportJobResult.t`, *default:* `nil`) - Output only. Import job result.
  *   `importSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobImportJobSpec.t`, *default:* `nil`) - Import job specification.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User-defined labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The name of the resource that the configuration is applied to, in the format projects/{project_number}/locations/{location_id}/metadataJobs/{metadata_job_id}.
  *   `status` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus.t`, *default:* `nil`) - Output only. Metadata job status.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Metadata job type.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A system-generated, globally unique ID for the metadata job. If the metadata job is deleted and then re-created with the same name, this ID is different.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metadata job was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :exportResult =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobExportJobResult.t() | nil,
          :exportSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobExportJobSpec.t() | nil,
          :importResult =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobImportJobResult.t() | nil,
          :importSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobImportJobSpec.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :status => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus.t() | nil,
          :type => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)

  field(:exportResult,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobExportJobResult
  )

  field(:exportSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobExportJobSpec)

  field(:importResult,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobImportJobResult
  )

  field(:importSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobImportJobSpec)

  field(:labels, type: :map)
  field(:name)
  field(:status, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus)
  field(:type)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJob do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
