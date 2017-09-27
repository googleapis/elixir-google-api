# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Datastore.V1.Model.RunQueryRequest do
  @moduledoc """
  The request for Datastore.RunQuery.

  ## Attributes

  - gqlQuery (GqlQuery): The GQL query to run. Defaults to: `null`.
  - partitionId (PartitionId): Entities are partitioned into subsets, identified by a partition ID. Queries are scoped to a single partition. This partition ID is normalized with the standard default context partition ID. Defaults to: `null`.
  - query (Query): The query to run. Defaults to: `null`.
  - readOptions (ReadOptions): The options for this query. Defaults to: `null`.
  """

  defstruct [
    :"gqlQuery",
    :"partitionId",
    :"query",
    :"readOptions"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.RunQueryRequest do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"gqlQuery", :struct, GoogleApi.Datastore.V1.Model.GqlQuery, options)
    |> deserialize(:"partitionId", :struct, GoogleApi.Datastore.V1.Model.PartitionId, options)
    |> deserialize(:"query", :struct, GoogleApi.Datastore.V1.Model.Query, options)
    |> deserialize(:"readOptions", :struct, GoogleApi.Datastore.V1.Model.ReadOptions, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.RunQueryRequest do
  def encode(value, options) do
    GoogleApi.Datastore.V1.Deserializer.serialize_non_nil(value, options)
  end
end

