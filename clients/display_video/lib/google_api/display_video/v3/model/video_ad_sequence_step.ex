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

defmodule GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceStep do
  @moduledoc """
  The detail of a single step in a VideoAdSequence.

  ## Attributes

  *   `adGroupId` (*type:* `String.t`, *default:* `nil`) - The ID of the corresponding ad group of the step.
  *   `interactionType` (*type:* `String.t`, *default:* `nil`) - The interaction on the previous step that will lead the viewer to this step. The first step does not have interaction_type.
  *   `previousStepId` (*type:* `String.t`, *default:* `nil`) - The ID of the previous step. The first step does not have previous step.
  *   `stepId` (*type:* `String.t`, *default:* `nil`) - The ID of the step.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adGroupId => String.t() | nil,
          :interactionType => String.t() | nil,
          :previousStepId => String.t() | nil,
          :stepId => String.t() | nil
        }

  field(:adGroupId)
  field(:interactionType)
  field(:previousStepId)
  field(:stepId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceStep do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end