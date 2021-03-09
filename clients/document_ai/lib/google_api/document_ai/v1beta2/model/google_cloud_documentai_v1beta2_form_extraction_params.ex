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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams do
  @moduledoc """
  Parameters to control form extraction behavior.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether to enable form extraction.
  *   `keyValuePairHints` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2KeyValuePairHint.t)`, *default:* `nil`) - Reserved for future use.
  *   `modelVersion` (*type:* `String.t`, *default:* `nil`) - Model version of the form extraction system. Default is "builtin/stable". Specify "builtin/latest" for the latest model. For custom form models, specify: “custom/{model_name}". Model name format is "bucket_name/path/to/modeldir" corresponding to "gs://bucket_name/path/to/modeldir" where annotated examples are stored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :keyValuePairHints =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2KeyValuePairHint.t()
            )
            | nil,
          :modelVersion => String.t() | nil
        }

  field(:enabled)

  field(:keyValuePairHints,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2KeyValuePairHint,
    type: :list
  )

  field(:modelVersion)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
