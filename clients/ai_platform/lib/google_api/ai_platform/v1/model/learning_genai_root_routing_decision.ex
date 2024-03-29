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

defmodule GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecision do
  @moduledoc """
  Holds the final routing decision, by storing the model_config_id. And individual scores each model got.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecisionMetadata.t`, *default:* `nil`) - 
  *   `modelConfigId` (*type:* `String.t`, *default:* `nil`) - The selected model to route traffic to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata =>
            GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecisionMetadata.t() | nil,
          :modelConfigId => String.t() | nil
        }

  field(:metadata, as: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecisionMetadata)
  field(:modelConfigId)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecision do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.LearningGenaiRootRoutingDecision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
