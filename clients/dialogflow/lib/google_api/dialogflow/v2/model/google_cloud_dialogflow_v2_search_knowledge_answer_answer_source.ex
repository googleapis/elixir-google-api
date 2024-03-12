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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource do
  @moduledoc """
  The sources of the answers.

  ## Attributes

  *   `snippet` (*type:* `String.t`, *default:* `nil`) - The relevant snippet of the article.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the article.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The URI of the article.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :snippet => String.t() | nil,
          :title => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:snippet)
  field(:title)
  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswerAnswerSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
