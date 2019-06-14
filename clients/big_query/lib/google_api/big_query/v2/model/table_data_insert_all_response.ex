# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse do
  @moduledoc """


  ## Attributes

  - insertErrors (list(GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponseInsertErrors.t)): An array of errors for rows that were not inserted. Defaults to `nil`.
  - kind (String.t): The resource type of the response. Defaults to `bigquery#tableDataInsertAllResponse`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :insertErrors =>
            list(GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponseInsertErrors.t()),
          :kind => String.t()
        }

  field(
    :insertErrors,
    as: GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponseInsertErrors,
    type: :list
  )

  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
