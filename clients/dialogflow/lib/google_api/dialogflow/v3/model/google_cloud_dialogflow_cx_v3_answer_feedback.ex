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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedback do
  @moduledoc """
  Stores information about feedback provided by users about a response.

  ## Attributes

  *   `customRating` (*type:* `String.t`, *default:* `nil`) - Optional. Custom rating from the user about the provided answer, with maximum length of 1024 characters. For example, client could use a customized JSON object to indicate the rating.
  *   `rating` (*type:* `String.t`, *default:* `nil`) - Optional. Rating from user for the specific Dialogflow response.
  *   `ratingReason` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.t`, *default:* `nil`) - Optional. In case of thumbs down rating provided, users can optionally provide context about the rating.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customRating => String.t() | nil,
          :rating => String.t() | nil,
          :ratingReason =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.t()
            | nil
        }

  field(:customRating)
  field(:rating)

  field(:ratingReason,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedback do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedback.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AnswerFeedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
