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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMentionAnnotation do
  @moduledoc """
  SaftMentionAnnotation(s) are used to identify a sub-span of the input with some semantic relevance, for example PER (Person), LOC (Locations) or measure etc. Each SaftMentionAnnotation will have exactly one non-empty field.

  ## Attributes

  *   `coreference` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftCoreference.t`, *default:* `nil`) - Annotations for spans that are resolved coreference mentions.
  *   `entity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftSpan.t`, *default:* `nil`) - Annotations for spans like "san francisco giants".
  *   `measure` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMeasure.t`, *default:* `nil`) - Annotations for spans "53 pounds".
  *   `title` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftSpan.t`, *default:* `nil`) - Annotations for spans like "the president of the United States".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coreference =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftCoreference.t() | nil,
          :entity => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftSpan.t() | nil,
          :measure => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMeasure.t() | nil,
          :title => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftSpan.t() | nil
        }

  field(:coreference, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftCoreference)
  field(:entity, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftSpan)
  field(:measure, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMeasure)
  field(:title, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftSpan)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMentionAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMentionAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingSaftMentionAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end