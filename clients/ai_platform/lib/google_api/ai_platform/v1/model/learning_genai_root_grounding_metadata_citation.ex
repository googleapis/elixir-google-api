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

defmodule GoogleApi.AIPlatform.V1.Model.LearningGenaiRootGroundingMetadataCitation do
  @moduledoc """


  ## Attributes

  *   `endIndex` (*type:* `integer()`, *default:* `nil`) - Index in the prediction output where the citation ends (exclusive). Must be > start_index and < len(output).
  *   `factIndex` (*type:* `integer()`, *default:* `nil`) - Index of the fact supporting this claim. Should be within the range of the `world_facts` in the GenerateResponse.
  *   `score` (*type:* `float()`, *default:* `nil`) - Confidence score of this entailment. Value is [0,1] with 1 is the most confidence.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - Index in the prediction output where the citation starts (inclusive). Must be >= 0 and < end_index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endIndex => integer() | nil,
          :factIndex => integer() | nil,
          :score => float() | nil,
          :startIndex => integer() | nil
        }

  field(:endIndex)
  field(:factIndex)
  field(:score)
  field(:startIndex)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootGroundingMetadataCitation do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.LearningGenaiRootGroundingMetadataCitation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootGroundingMetadataCitation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end