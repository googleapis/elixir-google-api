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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat do
  @moduledoc """
  The statistic representing a dataset split type for this export.

  ## Attributes

  *   `splitType` (*type:* `String.t`, *default:* `nil`) - The dataset split type.
  *   `totalDocumentCount` (*type:* `integer()`, *default:* `nil`) - Total number of documents with the given dataset split type to be exported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :splitType => String.t() | nil,
          :totalDocumentCount => integer() | nil
        }

  field(:splitType)
  field(:totalDocumentCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
