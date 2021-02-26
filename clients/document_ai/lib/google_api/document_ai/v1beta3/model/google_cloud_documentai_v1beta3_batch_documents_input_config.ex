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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig do
  @moduledoc """
  The common config to specify a set of documents used as input.

  ## Attributes

  *   `gcsDocuments` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3GcsDocuments.t`, *default:* `nil`) - The set of documents individually specified on Cloud Storage.
  *   `gcsPrefix` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3GcsPrefix.t`, *default:* `nil`) - The set of documents that match the specified Cloud Storage [gcs_prefix].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsDocuments =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3GcsDocuments.t(),
          :gcsPrefix =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3GcsPrefix.t()
        }

  field(:gcsDocuments,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3GcsDocuments
  )

  field(:gcsPrefix, as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3GcsPrefix)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
