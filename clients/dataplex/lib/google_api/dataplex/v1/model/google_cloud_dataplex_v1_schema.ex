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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Schema do
  @moduledoc """
  Schema information describing the structure and layout of the data.

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SchemaSchemaField.t)`, *default:* `nil`) - Optional. The sequence of fields describing data in table entities. Note: BigQuery SchemaFields are immutable.
  *   `partitionFields` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SchemaPartitionField.t)`, *default:* `nil`) - Optional. The sequence of fields describing the partition structure in entities. If this field is empty, there are no partitions within the data.
  *   `partitionStyle` (*type:* `String.t`, *default:* `nil`) - Optional. The structure of paths containing partition data within the entity.
  *   `userManaged` (*type:* `boolean()`, *default:* `nil`) - Required. Set to true if user-managed or false if managed by Dataplex. The default is false (managed by Dataplex). Set to falseto enable Dataplex discovery to update the schema. including new data discovery, schema inference, and schema evolution. Users retain the ability to input and edit the schema. Dataplex treats schema input by the user as though produced by a previous Dataplex discovery operation, and it will evolve the schema and take action based on that treatment. Set to true to fully manage the entity schema. This setting guarantees that Dataplex will not change schema fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields =>
            list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SchemaSchemaField.t()) | nil,
          :partitionFields =>
            list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SchemaPartitionField.t()) | nil,
          :partitionStyle => String.t() | nil,
          :userManaged => boolean() | nil
        }

  field(:fields,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SchemaSchemaField,
    type: :list
  )

  field(:partitionFields,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SchemaPartitionField,
    type: :list
  )

  field(:partitionStyle)
  field(:userManaged)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Schema do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Schema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Schema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
