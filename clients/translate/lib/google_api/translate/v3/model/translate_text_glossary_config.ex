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

defmodule GoogleApi.Translate.V3.Model.TranslateTextGlossaryConfig do
  @moduledoc """
  Configures which glossary should be used for a specific target language, and defines options for applying that glossary.

  ## Attributes

  *   `glossary` (*type:* `String.t`, *default:* `nil`) - Required. The `glossary` to be applied for this translation. The format depends on glossary: - User provided custom glossary: `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`
  *   `ignoreCase` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates match is case-insensitive. Default value is false if missing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :glossary => String.t() | nil,
          :ignoreCase => boolean() | nil
        }

  field(:glossary)
  field(:ignoreCase)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.TranslateTextGlossaryConfig do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.TranslateTextGlossaryConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.TranslateTextGlossaryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
