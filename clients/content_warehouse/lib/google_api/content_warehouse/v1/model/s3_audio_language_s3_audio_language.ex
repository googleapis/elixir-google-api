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

defmodule GoogleApi.ContentWarehouse.V1.Model.S3AudioLanguageS3AudioLanguage do
  @moduledoc """
  S3 based Audio language information about a Watch Page.

  ## Attributes

  *   `language` (*type:* `String.t`, *default:* `nil`) - Audio language of video classified by Automatic Language Identification. It corresponds to the langid_result in S3LangIdSignals.
  *   `languageConfidence` (*type:* `String.t`, *default:* `nil`) - Confidence interval of the recognized language.
  *   `speechClass` (*type:* `String.t`, *default:* `nil`) - Type of detected speech.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :language => String.t() | nil,
          :languageConfidence => String.t() | nil,
          :speechClass => String.t() | nil
        }

  field(:language)
  field(:languageConfidence)
  field(:speechClass)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.S3AudioLanguageS3AudioLanguage do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.S3AudioLanguageS3AudioLanguage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.S3AudioLanguageS3AudioLanguage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
