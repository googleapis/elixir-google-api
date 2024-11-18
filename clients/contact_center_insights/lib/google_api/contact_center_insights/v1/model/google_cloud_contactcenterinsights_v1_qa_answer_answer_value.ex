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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue do
  @moduledoc """
  Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines the possible answer values for a question.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Boolean value.
  *   `key` (*type:* `String.t`, *default:* `nil`) - A short string used as an identifier. Matches the value used in QaQuestion.AnswerChoice.key.
  *   `naValue` (*type:* `boolean()`, *default:* `nil`) - A value of "Not Applicable (N/A)". Should only ever be `true`.
  *   `normalizedScore` (*type:* `float()`, *default:* `nil`) - Output only. Normalized score of the questions. Calculated as score / potential_score.
  *   `numValue` (*type:* `float()`, *default:* `nil`) - Numerical value.
  *   `potentialScore` (*type:* `float()`, *default:* `nil`) - Output only. The maximum potential score of the question.
  *   `score` (*type:* `float()`, *default:* `nil`) - Output only. Numerical score of the answer.
  *   `strValue` (*type:* `String.t`, *default:* `nil`) - String value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :key => String.t() | nil,
          :naValue => boolean() | nil,
          :normalizedScore => float() | nil,
          :numValue => float() | nil,
          :potentialScore => float() | nil,
          :score => float() | nil,
          :strValue => String.t() | nil
        }

  field(:boolValue)
  field(:key)
  field(:naValue)
  field(:normalizedScore)
  field(:numValue)
  field(:potentialScore)
  field(:score)
  field(:strValue)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
