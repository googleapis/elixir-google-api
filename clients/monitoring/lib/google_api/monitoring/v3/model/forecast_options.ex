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

defmodule GoogleApi.Monitoring.V3.Model.ForecastOptions do
  @moduledoc """
  Options used when forecasting the time series and testing the predicted value against the threshold.

  ## Attributes

  *   `forecastHorizon` (*type:* `String.t`, *default:* `nil`) - Required. The length of time into the future to forecast whether a time series will violate the threshold. If the predicted value is found to violate the threshold, and the violation is observed in all forecasts made for the configured duration, then the time series is considered to be failing. The forecast horizon can range from 1 hour to 60 hours.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :forecastHorizon => String.t() | nil
        }

  field(:forecastHorizon)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ForecastOptions do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ForecastOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ForecastOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
