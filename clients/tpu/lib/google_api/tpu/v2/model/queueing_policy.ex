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

defmodule GoogleApi.TPU.V2.Model.QueueingPolicy do
  @moduledoc """
  Defines the policy of the QueuedRequest.

  ## Attributes

  *   `validAfterDuration` (*type:* `String.t`, *default:* `nil`) - Optional. A relative time after which resources may be created.
  *   `validAfterTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. An absolute time after which resources may be created.
  *   `validInterval` (*type:* `GoogleApi.TPU.V2.Model.Interval.t`, *default:* `nil`) - Optional. An absolute time interval within which resources may be created.
  *   `validUntilDuration` (*type:* `String.t`, *default:* `nil`) - Optional. A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  *   `validUntilTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :validAfterDuration => String.t() | nil,
          :validAfterTime => DateTime.t() | nil,
          :validInterval => GoogleApi.TPU.V2.Model.Interval.t() | nil,
          :validUntilDuration => String.t() | nil,
          :validUntilTime => DateTime.t() | nil
        }

  field(:validAfterDuration)
  field(:validAfterTime, as: DateTime)
  field(:validInterval, as: GoogleApi.TPU.V2.Model.Interval)
  field(:validUntilDuration)
  field(:validUntilTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V2.Model.QueueingPolicy do
  def decode(value, options) do
    GoogleApi.TPU.V2.Model.QueueingPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V2.Model.QueueingPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
