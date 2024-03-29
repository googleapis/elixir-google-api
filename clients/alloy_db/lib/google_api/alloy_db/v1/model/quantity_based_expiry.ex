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

defmodule GoogleApi.AlloyDB.V1.Model.QuantityBasedExpiry do
  @moduledoc """
  A backup's position in a quantity-based retention queue, of backups with the same source cluster and type, with length, retention, specified by the backup's retention policy. Once the position is greater than the retention, the backup is eligible to be garbage collected. Example: 5 backups from the same source cluster and type with a quantity-based retention of 3 and denoted by backup_id (position, retention). Safe: backup_5 (1, 3), backup_4, (2, 3), backup_3 (3, 3). Awaiting garbage collection: backup_2 (4, 3), backup_1 (5, 3)

  ## Attributes

  *   `retentionCount` (*type:* `integer()`, *default:* `nil`) - Output only. The backup's position among its backups with the same source cluster and type, by descending chronological order create time(i.e. newest first).
  *   `totalRetentionCount` (*type:* `integer()`, *default:* `nil`) - Output only. The length of the quantity-based queue, specified by the backup's retention policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :retentionCount => integer() | nil,
          :totalRetentionCount => integer() | nil
        }

  field(:retentionCount)
  field(:totalRetentionCount)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.QuantityBasedExpiry do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.QuantityBasedExpiry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.QuantityBasedExpiry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
