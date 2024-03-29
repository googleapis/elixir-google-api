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

defmodule GoogleApi.Spanner.V1.Model.BatchWriteResponse do
  @moduledoc """
  The result of applying a batch of mutations.

  ## Attributes

  *   `commitTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The commit timestamp of the transaction that applied this batch. Present if `status` is `OK`, absent otherwise.
  *   `indexes` (*type:* `list(integer())`, *default:* `nil`) - The mutation groups applied in this batch. The values index into the `mutation_groups` field in the corresponding `BatchWriteRequest`.
  *   `status` (*type:* `GoogleApi.Spanner.V1.Model.Status.t`, *default:* `nil`) - An `OK` status indicates success. Any other status indicates a failure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitTimestamp => DateTime.t() | nil,
          :indexes => list(integer()) | nil,
          :status => GoogleApi.Spanner.V1.Model.Status.t() | nil
        }

  field(:commitTimestamp, as: DateTime)
  field(:indexes, type: :list)
  field(:status, as: GoogleApi.Spanner.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.BatchWriteResponse do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.BatchWriteResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.BatchWriteResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
