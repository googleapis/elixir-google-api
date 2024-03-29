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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorRatingScore do
  @moduledoc """
  Aggregated rating score, used in training pipeline, etc.

  ## Attributes

  *   `averageBookmarkUsefulness` (*type:* `number()`, *default:* `nil`) - Average score of bookmark usefulness.
  *   `averageDescriptionQuality` (*type:* `number()`, *default:* `nil`) - Average score of description quality.
  *   `furballUrl` (*type:* `list(String.t)`, *default:* `nil`) - Furball URL(s) of the rating score (may have been rated more than once)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :averageBookmarkUsefulness => number() | nil,
          :averageDescriptionQuality => number() | nil,
          :furballUrl => list(String.t()) | nil
        }

  field(:averageBookmarkUsefulness)
  field(:averageDescriptionQuality)
  field(:furballUrl, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorRatingScore do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorRatingScore.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorRatingScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
