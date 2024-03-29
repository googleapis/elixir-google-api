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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAttribute do
  @moduledoc """
  Denotes one dataAttribute in a dataTaxonomy, for example, PII. DataAttribute resources can be defined in a hierarchy. A single dataAttribute resource can contain specs of multiple types PII - ResourceAccessSpec : - readers :foo@bar.com - DataAccessSpec : - readers :bar@foo.com 

  ## Attributes

  *   `attributeCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of child attributes present for this attribute.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the DataAttribute was created.
  *   `dataAccessSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAccessSpec.t`, *default:* `nil`) - Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the DataAttribute.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User friendly display name.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User-defined labels for the DataAttribute.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the dataAttribute, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}.
  *   `parentId` (*type:* `String.t`, *default:* `nil`) - Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
  *   `resourceAccessSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec.t`, *default:* `nil`) - Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System generated globally unique ID for the DataAttribute. This ID will be different if the DataAttribute is deleted and re-created with the same name.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the DataAttribute was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeCount => integer() | nil,
          :createTime => DateTime.t() | nil,
          :dataAccessSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAccessSpec.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :parentId => String.t() | nil,
          :resourceAccessSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:attributeCount)
  field(:createTime, as: DateTime)
  field(:dataAccessSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAccessSpec)
  field(:description)
  field(:displayName)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:parentId)

  field(:resourceAccessSpec,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec
  )

  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAttribute do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAttribute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataAttribute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
