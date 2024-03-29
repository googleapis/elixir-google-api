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

defmodule GoogleApi.PubSubLite.V1.Model.TimeTarget do
  @moduledoc """
  A target publish or event time. Can be used for seeking to or retrieving the corresponding cursor.

  ## Attributes

  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Request the cursor of the first message with event time greater than or equal to `event_time`. If messages are missing an event time, the publish time is used as a fallback. As event times are user supplied, subsequent messages may have event times less than `event_time` and should be filtered by the client, if necessary.
  *   `publishTime` (*type:* `DateTime.t`, *default:* `nil`) - Request the cursor of the first message with publish time greater than or equal to `publish_time`. All messages thereafter are guaranteed to have publish times >= `publish_time`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventTime => DateTime.t() | nil,
          :publishTime => DateTime.t() | nil
        }

  field(:eventTime, as: DateTime)
  field(:publishTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.PubSubLite.V1.Model.TimeTarget do
  def decode(value, options) do
    GoogleApi.PubSubLite.V1.Model.TimeTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSubLite.V1.Model.TimeTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
