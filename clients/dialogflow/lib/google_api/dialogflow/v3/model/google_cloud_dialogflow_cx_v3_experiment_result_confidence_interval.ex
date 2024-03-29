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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval do
  @moduledoc """
  A confidence interval is a range of possible values for the experiment objective you are trying to measure.

  ## Attributes

  *   `confidenceLevel` (*type:* `float()`, *default:* `nil`) - The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.
  *   `lowerBound` (*type:* `float()`, *default:* `nil`) - Lower bound of the interval.
  *   `ratio` (*type:* `float()`, *default:* `nil`) - The percent change between an experiment metric's value and the value for its control.
  *   `upperBound` (*type:* `float()`, *default:* `nil`) - Upper bound of the interval.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceLevel => float() | nil,
          :lowerBound => float() | nil,
          :ratio => float() | nil,
          :upperBound => float() | nil
        }

  field(:confidenceLevel)
  field(:lowerBound)
  field(:ratio)
  field(:upperBound)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
