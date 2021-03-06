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

defmodule GoogleApi.Sheets.V4.Model.IterativeCalculationSettings do
  @moduledoc """
  Settings to control how circular dependencies are resolved with iterative calculation.

  ## Attributes

  *   `convergenceThreshold` (*type:* `float()`, *default:* `nil`) - When iterative calculation is enabled and successive results differ by less than this threshold value, the calculation rounds stop.
  *   `maxIterations` (*type:* `integer()`, *default:* `nil`) - When iterative calculation is enabled, the maximum number of calculation rounds to perform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :convergenceThreshold => float() | nil,
          :maxIterations => integer() | nil
        }

  field(:convergenceThreshold)
  field(:maxIterations)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.IterativeCalculationSettings do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.IterativeCalculationSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.IterativeCalculationSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
