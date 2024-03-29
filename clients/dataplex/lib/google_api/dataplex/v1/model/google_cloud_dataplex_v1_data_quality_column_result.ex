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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityColumnResult do
  @moduledoc """
  DataQualityColumnResult provides a more detailed, per-column view of the results.

  ## Attributes

  *   `column` (*type:* `String.t`, *default:* `nil`) - Output only. The column specified in the DataQualityRule.
  *   `score` (*type:* `number()`, *default:* `nil`) - Output only. The column-level data quality score for this data scan job if and only if the 'column' field is set.The score ranges between between 0, 100 (up to two decimal points).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :column => String.t() | nil,
          :score => number() | nil
        }

  field(:column)
  field(:score)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityColumnResult do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityColumnResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityColumnResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
