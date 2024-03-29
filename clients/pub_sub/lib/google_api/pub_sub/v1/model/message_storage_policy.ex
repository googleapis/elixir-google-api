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

defmodule GoogleApi.PubSub.V1.Model.MessageStoragePolicy do
  @moduledoc """
  A policy constraining the storage of messages published to the topic.

  ## Attributes

  *   `allowedPersistenceRegions` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of IDs of Google Cloud regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed Google Cloud regions (or running outside of Google Cloud altogether) are routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration.
  *   `enforceInTransit` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, `allowed_persistence_regions` is also used to enforce in-transit guarantees for messages. That is, Pub/Sub will fail Publish operations on this topic and subscribe operations on any subscription attached to this topic in any region that is not in `allowed_persistence_regions`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedPersistenceRegions => list(String.t()) | nil,
          :enforceInTransit => boolean() | nil
        }

  field(:allowedPersistenceRegions, type: :list)
  field(:enforceInTransit)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.MessageStoragePolicy do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.MessageStoragePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.MessageStoragePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
