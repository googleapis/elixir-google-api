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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult do
  @moduledoc """
  The result of the assessment.

  ## Attributes

  *   `assessmentRecommendations` (*type:* `%{optional(String.t) => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation.t}`, *default:* `nil`) - The recommendations of the assessment. The key is the "name" of the assessment (not display_name), and the value are the recommendations.
  *   `dataUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when resource data was last fetched for this resource. This time may be different than when the resource was actually updated due to lag in data collection.
  *   `failedAssessmentPerWeight` (*type:* `map()`, *default:* `nil`) - The number of failed assessments grouped by its weight. Keys are one of the following: "MAJOR", "MODERATE", "MINOR".
  *   `score` (*type:* `integer()`, *default:* `nil`) - The security score of the assessment.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the assessment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assessmentRecommendations =>
            %{
              optional(String.t()) =>
                GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation.t()
            }
            | nil,
          :dataUpdateTime => DateTime.t() | nil,
          :failedAssessmentPerWeight => map() | nil,
          :score => integer() | nil,
          :severity => String.t() | nil
        }

  field(:assessmentRecommendations,
    as:
      GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation,
    type: :map
  )

  field(:dataUpdateTime, as: DateTime)
  field(:failedAssessmentPerWeight, type: :map)
  field(:score)
  field(:severity)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
