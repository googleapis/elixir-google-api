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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle do
  @moduledoc """
  Example: "The White Album"

  ## Attributes

  *   `annotationList` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotationList.t`, *default:* `nil`) - Annotations from custom media annotator.
  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - Required, but should only be used inside Aqua and must not be used by outside clients!!
  *   `favorite` (*type:* `boolean()`, *default:* `nil`) - If true, indicates the user wants their favorite album. Like [play my favorite album my Eminem]
  *   `first` (*type:* `boolean()`, *default:* `nil`) - If true, indicates the user wants the first album. Like [play adele's first album]
  *   `isFromFastPath` (*type:* `boolean()`, *default:* `nil`) - Is annotated by Nimble for the media Fast Path.
  *   `latest` (*type:* `boolean()`, *default:* `nil`) - If true, indicates the user wants the latest album. Like, [play adele's latest album]
  *   `playMore` (*type:* `boolean()`, *default:* `nil`) - More from this album.
  *   `qref` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t`, *default:* `nil`) - 
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - Required, corresponds to the raw text, like "The White Album."
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationList =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotationList.t()
            | nil,
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :favorite => boolean() | nil,
          :first => boolean() | nil,
          :isFromFastPath => boolean() | nil,
          :latest => boolean() | nil,
          :playMore => boolean() | nil,
          :qref => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t() | nil,
          :rawText => String.t() | nil
        }

  field(:annotationList,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotationList
  )

  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:favorite)
  field(:first)
  field(:isFromFastPath)
  field(:latest)
  field(:playMore)
  field(:qref, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation)
  field(:rawText)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
