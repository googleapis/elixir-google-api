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

defmodule GoogleApi.Redis.V1beta1.Model.RDBConfig do
  @moduledoc """
  Configuration of the RDB based persistence.

  ## Attributes

  *   `rdbSnapshotPeriod` (*type:* `String.t`, *default:* `nil`) - Optional. Period between RDB snapshots.
  *   `rdbSnapshotStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The time that the first snapshot was/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rdbSnapshotPeriod => String.t() | nil,
          :rdbSnapshotStartTime => DateTime.t() | nil
        }

  field(:rdbSnapshotPeriod)
  field(:rdbSnapshotStartTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.RDBConfig do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.RDBConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.RDBConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
