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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionIncompatibleDataSchema do
  @moduledoc """
  Action details for incompatible schemas detected by discovery.

  ## Attributes

  *   `existingSchema` (*type:* `String.t`, *default:* `nil`) - The existing and expected schema of the table. The schema is provided as a JSON formatted structure listing columns and data types.
  *   `newSchema` (*type:* `String.t`, *default:* `nil`) - The new and incompatible schema within the table. The schema is provided as a JSON formatted structured listing columns and data types.
  *   `sampledDataLocations` (*type:* `list(String.t)`, *default:* `nil`) - The list of data locations sampled and used for format/schema inference.
  *   `schemaChange` (*type:* `String.t`, *default:* `nil`) - Whether the action relates to a schema that is incompatible or modified.
  *   `table` (*type:* `String.t`, *default:* `nil`) - The name of the table containing invalid data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :existingSchema => String.t() | nil,
          :newSchema => String.t() | nil,
          :sampledDataLocations => list(String.t()) | nil,
          :schemaChange => String.t() | nil,
          :table => String.t() | nil
        }

  field(:existingSchema)
  field(:newSchema)
  field(:sampledDataLocations, type: :list)
  field(:schemaChange)
  field(:table)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionIncompatibleDataSchema do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionIncompatibleDataSchema.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ActionIncompatibleDataSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
