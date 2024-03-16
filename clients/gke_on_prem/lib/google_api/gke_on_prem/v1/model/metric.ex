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

defmodule GoogleApi.GKEOnPrem.V1.Model.Metric do
  @moduledoc """
  Progress metric is (string, int|float|string) pair.

  ## Attributes

  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - For metrics with floating point value.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - For metrics with integer value.
  *   `metric` (*type:* `String.t`, *default:* `nil`) - Required. The metric name.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - For metrics with custom values (ratios, visual progress, etc.).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :doubleValue => float() | nil,
          :intValue => String.t() | nil,
          :metric => String.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:doubleValue)
  field(:intValue)
  field(:metric)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.Metric do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.Metric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.Metric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end