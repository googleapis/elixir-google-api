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

defmodule GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerInfo do
  @moduledoc """
  TunnelerInfo contains metadata about tunneler launched by connection manager.

  ## Attributes

  *   `backoffRetryCount` (*type:* `integer()`, *default:* `nil`) - backoff_retry_count stores the number of times the tunneler has been retried by tunManager for current backoff sequence. Gets reset to 0 if time difference between 2 consecutive retries exceeds backoffRetryResetTime.
  *   `id` (*type:* `String.t`, *default:* `nil`) - id is the unique id of a tunneler.
  *   `latestErr` (*type:* `GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerError.t`, *default:* `nil`) - latest_err stores the Error for the latest tunneler failure. Gets reset everytime the tunneler is retried by tunManager.
  *   `latestRetryTime` (*type:* `DateTime.t`, *default:* `nil`) - latest_retry_time stores the time when the tunneler was last restarted.
  *   `totalRetryCount` (*type:* `integer()`, *default:* `nil`) - total_retry_count stores the total number of times the tunneler has been retried by tunManager.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backoffRetryCount => integer() | nil,
          :id => String.t() | nil,
          :latestErr => GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerError.t() | nil,
          :latestRetryTime => DateTime.t() | nil,
          :totalRetryCount => integer() | nil
        }

  field(:backoffRetryCount)
  field(:id)
  field(:latestErr, as: GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerError)
  field(:latestRetryTime, as: DateTime)
  field(:totalRetryCount)
end

defimpl Poison.Decoder, for: GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerInfo do
  def decode(value, options) do
    GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BeyondCorp.V1.Model.Tunnelv1ProtoTunnelerInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
