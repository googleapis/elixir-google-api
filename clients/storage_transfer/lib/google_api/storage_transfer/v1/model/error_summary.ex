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

defmodule GoogleApi.StorageTransfer.V1.Model.ErrorSummary do
  @moduledoc """
  A summary of errors by error code, plus a count and sample error log entries.

  ## Attributes

  *   `errorCode` (*type:* `String.t`, *default:* `nil`) - Required.
  *   `errorCount` (*type:* `String.t`, *default:* `nil`) - Required. Count of this type of error.
  *   `errorLogEntries` (*type:* `list(GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry.t)`, *default:* `nil`) - Error samples. At most 5 error log entries are recorded for a given error code for a single transfer operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorCode => String.t() | nil,
          :errorCount => String.t() | nil,
          :errorLogEntries => list(GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry.t()) | nil
        }

  field(:errorCode)
  field(:errorCount)
  field(:errorLogEntries, as: GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.ErrorSummary do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.ErrorSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.ErrorSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
