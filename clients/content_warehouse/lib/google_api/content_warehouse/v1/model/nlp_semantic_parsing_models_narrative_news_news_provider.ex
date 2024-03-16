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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider do
  @moduledoc """
  Corresponds to an entry in our hand-curated Nimble table of providers.

  ## Attributes

  *   `data` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityActionsNewsProviderAnnotationData.t`, *default:* `nil`) - Annotation data for the provider.
  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - Required, but should only be used inside Aqua and must not be used by outside clients!!
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data =>
            GoogleApi.ContentWarehouse.V1.Model.QualityActionsNewsProviderAnnotationData.t() | nil,
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :rawText => String.t() | nil
        }

  field(:data, as: GoogleApi.ContentWarehouse.V1.Model.QualityActionsNewsProviderAnnotationData)
  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:rawText)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end