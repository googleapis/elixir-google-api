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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata do
  @moduledoc """
  Describes the metadata about the dynamic retrieval predictor.

  ## Attributes

  *   `prediction` (*type:* `number()`, *default:* `nil`) - The value of the predictor. This should be between [0, 1] where a value of 0 means that the query would not benefit from grounding, while a value of 1.0 means that the query would benefit the most. In between values allow to differentiate between different usefulness scores for grounding.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the predictor which was used in dynamic retrieval.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :prediction => number() | nil,
          :version => String.t() | nil
        }

  field(:prediction)
  field(:version)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GenerateGroundedContentResponseCandidateGroundingMetadataDynamicRetrievalPredictorMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
