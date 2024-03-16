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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores do
  @moduledoc """
  Blarney Stone classification scores: go/blarneystone Next available ID: 6

  ## Attributes

  *   `familySafeV1Score` (*type:* `number()`, *default:* `nil`) - 
  *   `mildHateHarassV1Score` (*type:* `number()`, *default:* `nil`) - 
  *   `mildHateHarassV2Score` (*type:* `number()`, *default:* `nil`) - 
  *   `modelScores` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerModelScore.t)`, *default:* `nil`) - The scores corresponds to each of the abe_models in /cns/yk-d/home/blarneystone/model0/config-2015-11-20.pbtxt
  *   `severeHateHarassV1Score` (*type:* `number()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :familySafeV1Score => number() | nil,
          :mildHateHarassV1Score => number() | nil,
          :mildHateHarassV2Score => number() | nil,
          :modelScores =>
            list(GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerModelScore.t()) | nil,
          :severeHateHarassV1Score => number() | nil
        }

  field(:familySafeV1Score)
  field(:mildHateHarassV1Score)
  field(:mildHateHarassV2Score)

  field(:modelScores,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerModelScore,
    type: :list
  )

  field(:severeHateHarassV1Score)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end