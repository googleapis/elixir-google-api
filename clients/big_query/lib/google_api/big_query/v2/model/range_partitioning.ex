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

defmodule GoogleApi.BigQuery.V2.Model.RangePartitioning do
  @moduledoc """


  ## Attributes

  - field (String.t): [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64. Defaults to `nil`.
  - range (GoogleApi.BigQuery.V2.Model.RangePartitioningRange.t): [TrustedTester] [Required] Defines the ranges for range partitioning. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => String.t(),
          :range => GoogleApi.BigQuery.V2.Model.RangePartitioningRange.t()
        }

  field(:field)
  field(:range, as: GoogleApi.BigQuery.V2.Model.RangePartitioningRange)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.RangePartitioning do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.RangePartitioning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.RangePartitioning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
