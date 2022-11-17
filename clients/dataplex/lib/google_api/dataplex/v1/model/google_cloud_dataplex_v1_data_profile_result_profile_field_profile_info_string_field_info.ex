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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo do
  @moduledoc """
  StringFieldInfo defines output info for any string type field.

  ## Attributes

  *   `averageLength` (*type:* `float()`, *default:* `nil`) - The average length of a string field in the sampled data. Optional if zero non-null rows.
  *   `maxLength` (*type:* `String.t`, *default:* `nil`) - The maximum length of a string field in the sampled data. Optional if zero non-null rows.
  *   `minLength` (*type:* `String.t`, *default:* `nil`) - The minimum length of the string field in the sampled data. Optional if zero non-null rows.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :averageLength => float() | nil,
          :maxLength => String.t() | nil,
          :minLength => String.t() | nil
        }

  field(:averageLength)
  field(:maxLength)
  field(:minLength)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end