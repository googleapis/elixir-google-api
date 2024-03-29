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

defmodule GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData do
  @moduledoc """
  Available tags: 14+

  ## Attributes

  *   `AsrModel` (*type:* `String.t`, *default:* `nil`) - ASR model MPM version.
  *   `DocKey` (*type:* `String.t`, *default:* `nil`) - This should be the MustangDocId, we need to figure out how to generate a uint64 given the int64 we have in data_set
  *   `Lang` (*type:* `String.t`, *default:* `nil`) - Language of the recognizer used to generate transcript.
  *   `MustangDocId` (*type:* `String.t`, *default:* `nil`) - This is the videodocid associate to the http://video.google.com/videoplay?docid= NUMBER
  *   `Url` (*type:* `String.t`, *default:* `nil`) - URL for document.
  *   `s3Mode` (*type:* `String.t`, *default:* `nil`) - 
  *   `s3ModelInfoLabel` (*type:* `String.t`, *default:* `nil`) - S3 ASR model info.
  *   `transcript` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PseudoVideoDataTranscript.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :AsrModel => String.t() | nil,
          :DocKey => String.t() | nil,
          :Lang => String.t() | nil,
          :MustangDocId => String.t() | nil,
          :Url => String.t() | nil,
          :s3Mode => String.t() | nil,
          :s3ModelInfoLabel => String.t() | nil,
          :transcript => GoogleApi.ContentWarehouse.V1.Model.PseudoVideoDataTranscript.t() | nil
        }

  field(:AsrModel)
  field(:DocKey)
  field(:Lang)
  field(:MustangDocId)
  field(:Url)
  field(:s3Mode)
  field(:s3ModelInfoLabel)
  field(:transcript, as: GoogleApi.ContentWarehouse.V1.Model.PseudoVideoDataTranscript)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.PseudoVideoData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
