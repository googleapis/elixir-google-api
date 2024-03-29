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

defmodule GoogleApi.GKEOnPrem.V1.Model.OperationStage do
  @moduledoc """
  Information about a particular stage of an operation.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Time the stage ended.
  *   `metrics` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.Metric.t)`, *default:* `nil`) - Progress metric bundle.
  *   `stage` (*type:* `String.t`, *default:* `nil`) - The high-level stage of the operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time the stage started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the stage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :metrics => list(GoogleApi.GKEOnPrem.V1.Model.Metric.t()) | nil,
          :stage => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:metrics, as: GoogleApi.GKEOnPrem.V1.Model.Metric, type: :list)
  field(:stage)
  field(:startTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.OperationStage do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.OperationStage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.OperationStage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
