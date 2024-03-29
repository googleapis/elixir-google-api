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

defmodule GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationRecitationResult do
  @moduledoc """
  The recitation result for one input

  ## Attributes

  *   `dynamicSegmentResults` (*type:* `list(GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult.t)`, *default:* `nil`) - 
  *   `recitationAction` (*type:* `String.t`, *default:* `nil`) - The recitation action for one given input. When its segments contain different actions, the overall action will be returned in the precedence of BLOCK > CITE > NO_ACTION. When the given input is not found in any source, the recitation action will be NO_ACTION.
  *   `trainingSegmentResults` (*type:* `list(GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicSegmentResults =>
            list(GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult.t()) | nil,
          :recitationAction => String.t() | nil,
          :trainingSegmentResults =>
            list(GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult.t()) | nil
        }

  field(:dynamicSegmentResults,
    as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult,
    type: :list
  )

  field(:recitationAction)

  field(:trainingSegmentResults,
    as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationSegmentResult,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationRecitationResult do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationRecitationResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRecitationRecitationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
