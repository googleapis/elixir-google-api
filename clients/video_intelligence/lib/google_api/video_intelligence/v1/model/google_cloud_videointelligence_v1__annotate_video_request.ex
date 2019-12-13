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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_AnnotateVideoRequest do
  @moduledoc """
  Video annotation request.

  ## Attributes

  *   `features` (*type:* `list(String.t)`, *default:* `nil`) - Required. Requested video annotation features.
  *   `inputContent` (*type:* `String.t`, *default:* `nil`) - The video data bytes.
      If unset, the input video(s) should be specified via `input_uri`.
      If set, `input_uri` should be unset.
  *   `inputUri` (*type:* `String.t`, *default:* `nil`) - Input video location. Currently, only
      [Google Cloud Storage](https://cloud.google.com/storage/) URIs are
      supported, which must be specified in the following format:
      `gs://bucket-id/object-id` (other URI formats return
      google.rpc.Code.INVALID_ARGUMENT). For more information, see
      [Request URIs](/storage/docs/reference-uris).
      A video URI may include wildcards in `object-id`, and thus identify
      multiple videos. Supported wildcards: '*' to match 0 or more characters;
      '?' to match 1 character. If unset, the input video should be embedded
      in the request as `input_content`. If set, `input_content` should be unset.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Optional. Cloud region where annotation should take place. Supported cloud
      regions: `us-east1`, `us-west1`, `europe-west1`, `asia-east1`. If no region
      is specified, a region will be determined based on video file location.
  *   `outputUri` (*type:* `String.t`, *default:* `nil`) - Optional. Location where the output (in JSON format) should be stored.
      Currently, only [Google Cloud Storage](https://cloud.google.com/storage/)
      URIs are supported, which must be specified in the following format:
      `gs://bucket-id/object-id` (other URI formats return
      google.rpc.Code.INVALID_ARGUMENT). For more information, see
      [Request URIs](/storage/docs/reference-uris).
  *   `videoContext` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_VideoContext.t`, *default:* `nil`) - Additional video context and/or feature-specific parameters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :features => list(String.t()),
          :inputContent => String.t(),
          :inputUri => String.t(),
          :locationId => String.t(),
          :outputUri => String.t(),
          :videoContext =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_VideoContext.t()
        }

  field(:features, type: :list)
  field(:inputContent)
  field(:inputUri)
  field(:locationId)
  field(:outputUri)

  field(:videoContext,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_VideoContext
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_AnnotateVideoRequest do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_AnnotateVideoRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1_AnnotateVideoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
