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

defmodule GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource do
  @moduledoc """
   This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of GoogleSQL should leverage either DDL (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions

  ## Attributes

  *   `inlineCode` (*type:* `String.t`, *default:* `nil`) - [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
  *   `resourceUri` (*type:* `String.t`, *default:* `nil`) - [Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inlineCode => String.t() | nil,
          :resourceUri => String.t() | nil
        }

  field(:inlineCode)
  field(:resourceUri)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
