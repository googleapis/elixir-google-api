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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Container do
  @moduledoc """
  Represents a container that may contain DLP findings. Examples of a container include a file, table, or database record.

  ## Attributes

  *   `fullPath` (*type:* `String.t`, *default:* `nil`) - A string representation of the full container name. Examples: - BigQuery: 'Project:DataSetId.TableId' - Cloud Storage: 'gs://Bucket/folders/filename.txt'
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project where the finding was found. Can be different from the project that owns the finding.
  *   `relativePath` (*type:* `String.t`, *default:* `nil`) - The rest of the path after the root. Examples: - For BigQuery table `project_id:dataset_id.table_id`, the relative path is `table_id` - For Cloud Storage file `gs://bucket/folder/filename.txt`, the relative path is `folder/filename.txt`
  *   `rootPath` (*type:* `String.t`, *default:* `nil`) - The root of the container. Examples: - For BigQuery table `project_id:dataset_id.table_id`, the root is `dataset_id` - For Cloud Storage file `gs://bucket/folder/filename.txt`, the root is `gs://bucket`
  *   `type` (*type:* `String.t`, *default:* `nil`) - Container type, for example BigQuery or Cloud Storage.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Findings container modification timestamp, if applicable. For Cloud Storage, this field contains the last file modification timestamp. For a BigQuery table, this field contains the last_modified_time property. For Datastore, this field isn't populated.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Findings container version, if available ("generation" for Cloud Storage).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullPath => String.t() | nil,
          :projectId => String.t() | nil,
          :relativePath => String.t() | nil,
          :rootPath => String.t() | nil,
          :type => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :version => String.t() | nil
        }

  field(:fullPath)
  field(:projectId)
  field(:relativePath)
  field(:rootPath)
  field(:type)
  field(:updateTime, as: DateTime)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Container do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Container.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Container do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
