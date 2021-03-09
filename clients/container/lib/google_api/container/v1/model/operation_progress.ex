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

defmodule GoogleApi.Container.V1.Model.OperationProgress do
  @moduledoc """
  Information about operation (or operation stage) progress.

  ## Attributes

  *   `metrics` (*type:* `list(GoogleApi.Container.V1.Model.Metric.t)`, *default:* `nil`) - Progress metric bundle, for example: metrics: [{name: "nodes done", int_value: 15}, {name: "nodes total", int_value: 32}] or metrics: [{name: "progress", double_value: 0.56}, {name: "progress scale", double_value: 1.0}]
  *   `name` (*type:* `String.t`, *default:* `nil`) - A non-parameterized string describing an operation stage. Unset for single-stage operations.
  *   `stages` (*type:* `list(GoogleApi.Container.V1.Model.OperationProgress.t)`, *default:* `nil`) - Substages of an operation or a stage.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of an operation stage. Unset for single-stage operations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metrics => list(GoogleApi.Container.V1.Model.Metric.t()) | nil,
          :name => String.t() | nil,
          :stages => list(GoogleApi.Container.V1.Model.OperationProgress.t()) | nil,
          :status => String.t() | nil
        }

  field(:metrics, as: GoogleApi.Container.V1.Model.Metric, type: :list)
  field(:name)
  field(:stages, as: GoogleApi.Container.V1.Model.OperationProgress, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.OperationProgress do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.OperationProgress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.OperationProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
