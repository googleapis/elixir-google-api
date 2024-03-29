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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType do
  @moduledoc """
  Annotation statistics for each token type. Next available tag: 8.

  ## Attributes

  *   `avgOpenWorld` (*type:* `number()`, *default:* `nil`) - The average score for the open world for: - all ranges of this segment_type; - all capitalized ranges of this segment_type; - all uncapitalized ranges of this segment_type.
  *   `avgOpenWorldCap` (*type:* `number()`, *default:* `nil`) - 
  *   `avgOpenWorldUncap` (*type:* `number()`, *default:* `nil`) - 
  *   `numRangesWithCandidates` (*type:* `String.t`, *default:* `nil`) - The number of ranges with candidates that made it past primary pruning for: - all ranges of this segment_type; - all capitalized ranges of this segment_type; - all uncapitalized ranges of this segment_type.
  *   `numRangesWithCandidatesCap` (*type:* `String.t`, *default:* `nil`) - 
  *   `numRangesWithCandidatesUncap` (*type:* `String.t`, *default:* `nil`) - 
  *   `tokenType` (*type:* `String.t`, *default:* `nil`) - The segment type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avgOpenWorld => number() | nil,
          :avgOpenWorldCap => number() | nil,
          :avgOpenWorldUncap => number() | nil,
          :numRangesWithCandidates => String.t() | nil,
          :numRangesWithCandidatesCap => String.t() | nil,
          :numRangesWithCandidatesUncap => String.t() | nil,
          :tokenType => String.t() | nil
        }

  field(:avgOpenWorld)
  field(:avgOpenWorldCap)
  field(:avgOpenWorldUncap)
  field(:numRangesWithCandidates)
  field(:numRangesWithCandidatesCap)
  field(:numRangesWithCandidatesUncap)
  field(:tokenType)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
