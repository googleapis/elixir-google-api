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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Database do
  @moduledoc """
  A Cloud Firestore Database. Currently only one database is allowed per cloud project; this database must have a `database_id` of '(default)'.

  ## Attributes

  *   `concurrencyMode` (*type:* `String.t`, *default:* `nil`) - The concurrency control mode to use for this database.
  *   `earliestVersionTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The earliest timestamp at which older versions of the data can be read from the database. See [version_retention_period] above; this field is populated with `now - version_retention_period`. This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery. Note that you should not need to query this field: if you know the `version_retention_period` then you can query within that time.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - The location of the database. Available databases are listed at https://cloud.google.com/firestore/docs/locations.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the Database. Format: `projects/{project}/databases/{database}`
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :concurrencyMode => String.t() | nil,
          :earliestVersionTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :locationId => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:concurrencyMode)
  field(:earliestVersionTime, as: DateTime)
  field(:etag)
  field(:locationId)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Database do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Database.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Database do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
