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

defmodule GoogleApi.Translate.V3.Model.AdaptiveMtTranslateResponse do
  @moduledoc """
  An AdaptiveMtTranslate response.

  ## Attributes

  *   `glossaryTranslations` (*type:* `list(GoogleApi.Translate.V3.Model.AdaptiveMtTranslation.t)`, *default:* `nil`) - Text translation response if a glossary is provided in the request. This could be the same as 'translation' above if no terms apply.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Output only. The translation's language code.
  *   `translations` (*type:* `list(GoogleApi.Translate.V3.Model.AdaptiveMtTranslation.t)`, *default:* `nil`) - Output only. The translation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :glossaryTranslations =>
            list(GoogleApi.Translate.V3.Model.AdaptiveMtTranslation.t()) | nil,
          :languageCode => String.t() | nil,
          :translations => list(GoogleApi.Translate.V3.Model.AdaptiveMtTranslation.t()) | nil
        }

  field(:glossaryTranslations, as: GoogleApi.Translate.V3.Model.AdaptiveMtTranslation, type: :list)

  field(:languageCode)
  field(:translations, as: GoogleApi.Translate.V3.Model.AdaptiveMtTranslation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.AdaptiveMtTranslateResponse do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.AdaptiveMtTranslateResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.AdaptiveMtTranslateResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
