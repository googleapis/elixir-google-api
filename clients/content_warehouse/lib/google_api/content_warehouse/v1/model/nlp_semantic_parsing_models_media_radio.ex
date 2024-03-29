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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio do
  @moduledoc """
  Example: "107.7 the bone"

  ## Attributes

  *   `annotationList` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotationList.t`, *default:* `nil`) - Annotations from custom media annotator.
  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - Required, but should only be used inside Aqua and must not be used by outside clients!!
  *   `favorite` (*type:* `boolean()`, *default:* `nil`) - If true, indicates the user wants their favorite radio station to be played. Ex: [play my favorites on radio]
  *   `frequency` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaFrequency.t`, *default:* `nil`) - This proto may only be partially filled depending on the query. ## Some examples (all of them have open_intent): ## | Query |radio.raw_text|radio.frequency.band|radio.frequency.value| |[play kqed fm]| [kqed fm] | [fm] | N/A | |[play 88.5 fm]| [88.5 fm] | [fm] | 88.5 | | [play 88.5 | [88.5] | N/A | 88.5 | ## | [play fm] | [fm] | [fm] | N/A |
  *   `isAnnotatedFromText` (*type:* `boolean()`, *default:* `nil`) - Annotation comes from a text annotator. Needed to boost recall. Typically need to be verified in superroot, and have separate scoring.
  *   `isFromFastPath` (*type:* `boolean()`, *default:* `nil`) - Is annotated by Nimble for the media Fast Path.
  *   `qref` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t`, *default:* `nil`) - 
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - Required, corresponds to the raw text, like "107.7"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationList =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotationList.t()
            | nil,
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :favorite => boolean() | nil,
          :frequency =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaFrequency.t() | nil,
          :isAnnotatedFromText => boolean() | nil,
          :isFromFastPath => boolean() | nil,
          :qref => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t() | nil,
          :rawText => String.t() | nil
        }

  field(:annotationList,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotationList
  )

  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:favorite)

  field(:frequency, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaFrequency)

  field(:isAnnotatedFromText)
  field(:isFromFastPath)
  field(:qref, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation)
  field(:rawText)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
