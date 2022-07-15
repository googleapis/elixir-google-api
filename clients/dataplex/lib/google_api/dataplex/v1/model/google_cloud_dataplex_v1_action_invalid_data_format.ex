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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionInvalidDataFormat do
  @moduledoc """
  Action details for invalid or unsupported data files detected by discovery.

  ## Attributes

  *   `expectedFormat` (*type:* `String.t`, *default:* `nil`) - The expected data format of the entity.
  *   `newFormat` (*type:* `String.t`, *default:* `nil`) - The new unexpected data format within the entity.
  *   `sampledDataLocations` (*type:* `list(String.t)`, *default:* `nil`) - The list of data locations sampled and used for format/schema inference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expectedFormat => String.t() | nil,
          :newFormat => String.t() | nil,
          :sampledDataLocations => list(String.t()) | nil
        }

  field(:expectedFormat)
  field(:newFormat)
  field(:sampledDataLocations, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionInvalidDataFormat do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionInvalidDataFormat.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionInvalidDataFormat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
