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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalQualityConstraint do
  @moduledoc """
  Quality constraints about the establishment. In the future we can add to this message Zagat ratings, user reviews, etc. Next ID: 6.

  ## Attributes

  *   `best` (*type:* `boolean()`, *default:* `nil`) - 
  *   `highlyRated` (*type:* `boolean()`, *default:* `nil`) - 
  *   `starType` (*type:* `String.t`, *default:* `nil`) - 
  *   `stars` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalStarRatings.t`, *default:* `nil`) - 
  *   `unspecified` (*type:* `boolean()`, *default:* `nil`) - The user mentioned something about quality, but didn't mention a specific constraint. This is used to indicate an intent to remove all quality constraints, in queries like [forget the rating].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :best => boolean() | nil,
          :highlyRated => boolean() | nil,
          :starType => String.t() | nil,
          :stars =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalStarRatings.t() | nil,
          :unspecified => boolean() | nil
        }

  field(:best)
  field(:highlyRated)
  field(:starType)
  field(:stars, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalStarRatings)
  field(:unspecified)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalQualityConstraint do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalQualityConstraint.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalQualityConstraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
