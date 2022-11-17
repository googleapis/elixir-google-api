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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation do
  @moduledoc """
  Evaluates whether each column value lies between a specified range.

  ## Attributes

  *   `maxValue` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  *   `minValue` (*type:* `String.t`, *default:* `nil`) - Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  *   `strictMaxEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed. Only relevant if a max_value has been defined. Default = false.
  *   `strictMinEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed. Only relevant if a min_value has been defined. Default = false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxValue => String.t() | nil,
          :minValue => String.t() | nil,
          :strictMaxEnabled => boolean() | nil,
          :strictMinEnabled => boolean() | nil
        }

  field(:maxValue)
  field(:minValue)
  field(:strictMaxEnabled)
  field(:strictMinEnabled)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleRangeExpectation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end