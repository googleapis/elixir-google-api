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

defmodule GoogleApi.ChromeUXReport.V1.Model.Metric do
  @moduledoc """
  A `metric` is a set of user experience data for a single web performance metric, like "first contentful paint". It contains a summary histogram of real world Chrome usage as a series of `bins`.

  ## Attributes

  *   `histogram` (*type:* `list(GoogleApi.ChromeUXReport.V1.Model.Bin.t)`, *default:* `nil`) - The histogram of user experiences for a metric. The histogram will have at least one bin and the densities of all bins will add up to ~1.
  *   `percentiles` (*type:* `GoogleApi.ChromeUXReport.V1.Model.Percentiles.t`, *default:* `nil`) - Common useful percentiles of the Metric. The value type for the percentiles will be the same as the value types given for the Histogram bins.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :histogram => list(GoogleApi.ChromeUXReport.V1.Model.Bin.t()) | nil,
          :percentiles => GoogleApi.ChromeUXReport.V1.Model.Percentiles.t() | nil
        }

  field(:histogram, as: GoogleApi.ChromeUXReport.V1.Model.Bin, type: :list)
  field(:percentiles, as: GoogleApi.ChromeUXReport.V1.Model.Percentiles)
end

defimpl Poison.Decoder, for: GoogleApi.ChromeUXReport.V1.Model.Metric do
  def decode(value, options) do
    GoogleApi.ChromeUXReport.V1.Model.Metric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromeUXReport.V1.Model.Metric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
