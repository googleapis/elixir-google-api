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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScamRestrictEvaluationInfoApplyTokenStats do
  @moduledoc """
  The aggregated stats for token namespace restricts.

  ## Attributes

  *   `bijectiveMatches` (*type:* `String.t`, *default:* `nil`) - 
  *   `bitmapMatches` (*type:* `String.t`, *default:* `nil`) - 
  *   `noMatches` (*type:* `String.t`, *default:* `nil`) - 
  *   `nonCompactMatches` (*type:* `String.t`, *default:* `nil`) - 
  *   `vectorDatapointCount` (*type:* `String.t`, *default:* `nil`) - 
  *   `vectorMatches` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bijectiveMatches => String.t() | nil,
          :bitmapMatches => String.t() | nil,
          :noMatches => String.t() | nil,
          :nonCompactMatches => String.t() | nil,
          :vectorDatapointCount => String.t() | nil,
          :vectorMatches => String.t() | nil
        }

  field(:bijectiveMatches)
  field(:bitmapMatches)
  field(:noMatches)
  field(:nonCompactMatches)
  field(:vectorDatapointCount)
  field(:vectorMatches)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamRestrictEvaluationInfoApplyTokenStats do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScamRestrictEvaluationInfoApplyTokenStats.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamRestrictEvaluationInfoApplyTokenStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
