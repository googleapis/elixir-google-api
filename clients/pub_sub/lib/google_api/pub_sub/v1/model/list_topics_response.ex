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

defmodule GoogleApi.PubSub.V1.Model.ListTopicsResponse do
  @moduledoc """
  Response for the `ListTopics` method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If not empty, indicates that there may be more topics that match the request; this value should be passed in a new `ListTopicsRequest`.
  *   `topics` (*type:* `list(GoogleApi.PubSub.V1.Model.Topic.t)`, *default:* `nil`) - The resulting topics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :topics => list(GoogleApi.PubSub.V1.Model.Topic.t())
        }

  field(:nextPageToken)
  field(:topics, as: GoogleApi.PubSub.V1.Model.Topic, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ListTopicsResponse do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ListTopicsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ListTopicsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
