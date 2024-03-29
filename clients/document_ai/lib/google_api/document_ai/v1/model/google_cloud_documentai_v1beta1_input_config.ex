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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1InputConfig do
  @moduledoc """
  The desired input location and metadata.

  ## Attributes

  *   `gcsSource` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1GcsSource.t`, *default:* `nil`) - The Google Cloud Storage location to read the input from. This must be a single file.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - Required. Mimetype of the input. Current supported mimetypes are application/pdf, image/tiff, and image/gif. In addition, application/json type is supported for requests with ProcessDocumentRequest.automl_params field set. The JSON file needs to be in Document format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsSource =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1GcsSource.t() | nil,
          :mimeType => String.t() | nil
        }

  field(:gcsSource, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1GcsSource)
  field(:mimeType)
end

defimpl Poison.Decoder, for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1InputConfig do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1InputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1InputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
