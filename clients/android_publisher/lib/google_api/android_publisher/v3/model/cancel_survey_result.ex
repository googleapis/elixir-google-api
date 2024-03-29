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

defmodule GoogleApi.AndroidPublisher.V3.Model.CancelSurveyResult do
  @moduledoc """
  Result of the cancel survey when the subscription was canceled by the user.

  ## Attributes

  *   `reason` (*type:* `String.t`, *default:* `nil`) - The reason the user selected in the cancel survey.
  *   `reasonUserInput` (*type:* `String.t`, *default:* `nil`) - Only set for CANCEL_SURVEY_REASON_OTHERS. This is the user's freeform response to the survey.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reason => String.t() | nil,
          :reasonUserInput => String.t() | nil
        }

  field(:reason)
  field(:reasonUserInput)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.CancelSurveyResult do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.CancelSurveyResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.CancelSurveyResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
