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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceCitation do
  @moduledoc """
  Source attributions for content.

  ## Attributes

  *   `endIndex` (*type:* `integer()`, *default:* `nil`) - End index into the content.
  *   `license` (*type:* `String.t`, *default:* `nil`) - License of the attribution.
  *   `publicationDate` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleTypeDate.t`, *default:* `nil`) - Publication date of the attribution.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - Start index into the content.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the attribution.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Url reference of the attribution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endIndex => integer() | nil,
          :license => String.t() | nil,
          :publicationDate => GoogleApi.AIPlatform.V1.Model.GoogleTypeDate.t() | nil,
          :startIndex => integer() | nil,
          :title => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:endIndex)
  field(:license)
  field(:publicationDate, as: GoogleApi.AIPlatform.V1.Model.GoogleTypeDate)
  field(:startIndex)
  field(:title)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceCitation do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceCitation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceCitation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
