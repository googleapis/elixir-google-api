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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions do
  @moduledoc """
  Options to control foundation model tuning of the processor.

  ## Attributes

  *   `learningRateMultiplier` (*type:* `number()`, *default:* `nil`) - Optional. The multiplier to apply to the recommended learning rate. Valid values are between 0.1 and 10. If not provided, recommended learning rate will be used.
  *   `trainSteps` (*type:* `integer()`, *default:* `nil`) - Optional. The number of steps to run for model tuning. Valid values are between 1 and 400. If not provided, recommended steps will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :learningRateMultiplier => number() | nil,
          :trainSteps => integer() | nil
        }

  field(:learningRateMultiplier)
  field(:trainSteps)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
