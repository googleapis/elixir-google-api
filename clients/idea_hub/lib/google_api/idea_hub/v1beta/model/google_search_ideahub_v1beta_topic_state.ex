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

defmodule GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaTopicState do
  @moduledoc """
  Represents topic state specific to a web property.

  ## Attributes

  *   `dismissed` (*type:* `boolean()`, *default:* `nil`) - Whether the topic is dismissed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the topic state. Format: platforms/{platform}/properties/{property}/topicStates/{topic_state}
  *   `saved` (*type:* `boolean()`, *default:* `nil`) - Whether the topic is saved.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dismissed => boolean() | nil,
          :name => String.t() | nil,
          :saved => boolean() | nil
        }

  field(:dismissed)
  field(:name)
  field(:saved)
end

defimpl Poison.Decoder, for: GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaTopicState do
  def decode(value, options) do
    GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaTopicState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaTopicState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
