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

defmodule GoogleApi.Language.V1.Model.AnnotateTextResponse do
  @moduledoc """
  The text annotations response message.

  ## Attributes

  *   `categories` (*type:* `list(GoogleApi.Language.V1.Model.ClassificationCategory.t)`, *default:* `nil`) - Categories identified in the input document.
  *   `documentSentiment` (*type:* `GoogleApi.Language.V1.Model.Sentiment.t`, *default:* `nil`) - The overall sentiment for the document. Populated if the user enables AnnotateTextRequest.Features.extract_document_sentiment.
  *   `entities` (*type:* `list(GoogleApi.Language.V1.Model.Entity.t)`, *default:* `nil`) - Entities, along with their semantic information, in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_entities.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language field for more details.
  *   `moderationCategories` (*type:* `list(GoogleApi.Language.V1.Model.ClassificationCategory.t)`, *default:* `nil`) - Harmful and sensitive categories identified in the input document.
  *   `sentences` (*type:* `list(GoogleApi.Language.V1.Model.Sentence.t)`, *default:* `nil`) - Sentences in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
  *   `tokens` (*type:* `list(GoogleApi.Language.V1.Model.Token.t)`, *default:* `nil`) - Tokens, along with their syntactic information, in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categories => list(GoogleApi.Language.V1.Model.ClassificationCategory.t()) | nil,
          :documentSentiment => GoogleApi.Language.V1.Model.Sentiment.t() | nil,
          :entities => list(GoogleApi.Language.V1.Model.Entity.t()) | nil,
          :language => String.t() | nil,
          :moderationCategories =>
            list(GoogleApi.Language.V1.Model.ClassificationCategory.t()) | nil,
          :sentences => list(GoogleApi.Language.V1.Model.Sentence.t()) | nil,
          :tokens => list(GoogleApi.Language.V1.Model.Token.t()) | nil
        }

  field(:categories, as: GoogleApi.Language.V1.Model.ClassificationCategory, type: :list)
  field(:documentSentiment, as: GoogleApi.Language.V1.Model.Sentiment)
  field(:entities, as: GoogleApi.Language.V1.Model.Entity, type: :list)
  field(:language)

  field(:moderationCategories, as: GoogleApi.Language.V1.Model.ClassificationCategory, type: :list)

  field(:sentences, as: GoogleApi.Language.V1.Model.Sentence, type: :list)
  field(:tokens, as: GoogleApi.Language.V1.Model.Token, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.AnnotateTextResponse do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.AnnotateTextResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.AnnotateTextResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
