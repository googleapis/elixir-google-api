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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary do
  @moduledoc """
  Generated summary for a conversation.

  ## Attributes

  *   `baselineModelVersion` (*type:* `String.t`, *default:* `nil`) - The baseline model version used to generate this summary. It is empty if a baseline model was not used to generate this summary.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The summary content that is concatenated into one string.
  *   `textSections` (*type:* `map()`, *default:* `nil`) - The summary content that is divided into sections. The key is the section's name and the value is the section's content. There is no specific format for the key or value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baselineModelVersion => String.t() | nil,
          :text => String.t() | nil,
          :textSections => map() | nil
        }

  field(:baselineModelVersion)
  field(:text)
  field(:textSections, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryResponseSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
