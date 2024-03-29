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

defmodule GoogleApi.ContentWarehouse.V1.Model.SnippetExtraInfoSnippetScoringInfo do
  @moduledoc """
  Next ID: 9

  ## Attributes

  *   `brainNg3Score` (*type:* `number()`, *default:* `nil`) - 
  *   `brainScore` (*type:* `number()`, *default:* `nil`) - The below fields are populated by SnippetFlow in superroot. Score generated from snippet brain model. go/snippets-brain
  *   `features` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityPreviewRanklabSnippet.t`, *default:* `nil`) - Snippets ranklab features generated by scorer V2.
  *   `finalScore` (*type:* `number()`, *default:* `nil`) - Final snippet score by chooser.
  *   `rankBySnippetFlow` (*type:* `integer()`, *default:* `nil`) - Final rank given by SnippetFlow.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brainNg3Score => number() | nil,
          :brainScore => number() | nil,
          :features => GoogleApi.ContentWarehouse.V1.Model.QualityPreviewRanklabSnippet.t() | nil,
          :finalScore => number() | nil,
          :rankBySnippetFlow => integer() | nil
        }

  field(:brainNg3Score)
  field(:brainScore)
  field(:features, as: GoogleApi.ContentWarehouse.V1.Model.QualityPreviewRanklabSnippet)
  field(:finalScore)
  field(:rankBySnippetFlow)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SnippetExtraInfoSnippetScoringInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SnippetExtraInfoSnippetScoringInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SnippetExtraInfoSnippetScoringInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
