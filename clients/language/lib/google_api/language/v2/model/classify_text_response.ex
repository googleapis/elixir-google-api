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

defmodule GoogleApi.Language.V2.Model.ClassifyTextResponse do
  @moduledoc """
  The document classification response message.

  ## Attributes

  *   `categories` (*type:* `list(GoogleApi.Language.V2.Model.ClassificationCategory.t)`, *default:* `nil`) - Categories representing the input document.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language_code field for more details.
  *   `languageSupported` (*type:* `boolean()`, *default:* `nil`) - Whether the language is officially supported. The API may still return a response when the language is not supported, but it is on a best effort basis.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categories => list(GoogleApi.Language.V2.Model.ClassificationCategory.t()) | nil,
          :languageCode => String.t() | nil,
          :languageSupported => boolean() | nil
        }

  field(:categories, as: GoogleApi.Language.V2.Model.ClassificationCategory, type: :list)
  field(:languageCode)
  field(:languageSupported)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.ClassifyTextResponse do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.ClassifyTextResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.ClassifyTextResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
