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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification do
  @moduledoc """
  Whether the product being described fits into specific categories (e.g., "video games").

  ## Attributes

  *   `bookConfidence` (*type:* `number()`, *default:* `nil`) - TODO(ppoudyal) Expand confidence to cases where the product phrase might be a book/movie/video_game but isn't just a title The score (between 0 - 1) measuring the confidence that product
  *   `isVideoGame` (*type:* `boolean()`, *default:* `nil`) - TODO(ppoudyal) Deprecate is_video_game once the score covers all cases covered by $VideoGameProductPhrase The product phrase contains a video game title.
  *   `movieConfidence` (*type:* `number()`, *default:* `nil`) - phrase mentions a book title The score (between 0 - 1) measuring the confidence that product
  *   `videoGameConfidence` (*type:* `number()`, *default:* `nil`) - phrase mentions a movie title The score (between 0 - 1) measuring the confidence that product
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bookConfidence => number() | nil,
          :isVideoGame => boolean() | nil,
          :movieConfidence => number() | nil,
          :videoGameConfidence => number() | nil
        }

  field(:bookConfidence)
  field(:isVideoGame)
  field(:movieConfidence)
  field(:videoGameConfidence)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
