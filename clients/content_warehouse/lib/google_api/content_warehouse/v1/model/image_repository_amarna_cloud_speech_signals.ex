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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAmarnaCloudSpeechSignals do
  @moduledoc """
  Next Tag: 10

  ## Attributes

  *   `duplicateOfYtS3Asr` (*type:* `boolean()`, *default:* `nil`) - If this field is set to true, it means that Youtube already processed the ASR from S3 for the langID. Please find the ASR result from transcript_asr in google3/image/repository/proto/video_search.proto instead.
  *   `langWithoutLocale` (*type:* `String.t`, *default:* `nil`) - DEPRECATED: Please switch to `langid_input`. The language id input for creating this ASR without regional info. Same format as in go/ytlangid. This field is populated in Kronos Amarna Cloud Speech operator and passed to Amarna, but it is cleared before stored in Amarna's metadata table.
  *   `langidInput` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryLanguageIdentificationResult.t`, *default:* `nil`) - The language identification input used to generate this ASR. This field is populated in Kronos Amarna Cloud Speech operator and passed to Amarna, but cleared before stored in Amarna's metadata table.
  *   `modelIdentifier` (*type:* `String.t`, *default:* `nil`) - 
  *   `results` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageRepositorySpeechRecognitionResult.t)`, *default:* `nil`) - Raw results from Cloud Speech API
  *   `s3RecognizerMetadataResponse` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3RecognizerMetadataResponse.t`, *default:* `nil`) - The metadata about the S3 recognizer used.
  *   `transcriptAsr` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData.t`, *default:* `nil`) - This field contains full (stitched) transcription, word-level time offset , and word-level byte offset. The value of this field is derived from the SpeechRecognitionResult field above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duplicateOfYtS3Asr => boolean() | nil,
          :langWithoutLocale => String.t() | nil,
          :langidInput =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryLanguageIdentificationResult.t()
            | nil,
          :modelIdentifier => String.t() | nil,
          :results =>
            list(GoogleApi.ContentWarehouse.V1.Model.ImageRepositorySpeechRecognitionResult.t())
            | nil,
          :s3RecognizerMetadataResponse =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3RecognizerMetadataResponse.t()
            | nil,
          :transcriptAsr => GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData.t() | nil
        }

  field(:duplicateOfYtS3Asr)
  field(:langWithoutLocale)

  field(:langidInput,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryLanguageIdentificationResult
  )

  field(:modelIdentifier)

  field(:results,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositorySpeechRecognitionResult,
    type: :list
  )

  field(:s3RecognizerMetadataResponse,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3RecognizerMetadataResponse
  )

  field(:transcriptAsr, as: GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAmarnaCloudSpeechSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAmarnaCloudSpeechSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAmarnaCloudSpeechSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
