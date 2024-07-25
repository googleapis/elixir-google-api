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

defmodule GoogleApi.Spanner.V1.Model.QuorumInfo do
  @moduledoc """
  Information about the dual region quorum.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. The etag is used for optimistic concurrency control as a way to help prevent simultaneous ChangeQuorum requests that could create a race condition.
  *   `initiator` (*type:* `String.t`, *default:* `nil`) - Output only. Whether this ChangeQuorum is a Google or User initiated.
  *   `quorumType` (*type:* `GoogleApi.Spanner.V1.Model.QuorumType.t`, *default:* `nil`) - Output only. The type of this quorum. See QuorumType for more information about quorum type specifications.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the request was triggered.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :initiator => String.t() | nil,
          :quorumType => GoogleApi.Spanner.V1.Model.QuorumType.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:etag)
  field(:initiator)
  field(:quorumType, as: GoogleApi.Spanner.V1.Model.QuorumType)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.QuorumInfo do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.QuorumInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.QuorumInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
