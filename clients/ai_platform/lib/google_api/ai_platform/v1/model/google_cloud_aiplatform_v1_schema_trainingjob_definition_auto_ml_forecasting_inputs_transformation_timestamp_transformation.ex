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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation do
  @moduledoc """
  Training pipeline will perform following transformation functions. * Apply the transformation functions for Numerical columns. * Determine the year, month, day,and weekday. Treat each value from the timestamp as a Categorical column. * Invalid numerical values (for example, values that fall outside of a typical timestamp range, or are extreme values) receive no special treatment and are not removed.

  ## Attributes

  *   `columnName` (*type:* `String.t`, *default:* `nil`) - 
  *   `timeFormat` (*type:* `String.t`, *default:* `nil`) - The format in which that time field is expressed. The time_format must either be one of: * `unix-seconds` * `unix-milliseconds` * `unix-microseconds` * `unix-nanoseconds` (for respectively number of seconds, milliseconds, microseconds and nanoseconds since start of the Unix epoch); or be written in `strftime` syntax. If time_format is not set, then the default format is RFC 3339 `date-time` format, where `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnName => String.t() | nil,
          :timeFormat => String.t() | nil
        }

  field(:columnName)
  field(:timeFormat)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
