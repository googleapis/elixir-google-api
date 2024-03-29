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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1GovernanceEventEntity do
  @moduledoc """
  Information about Entity resource that the log event is associated with.

  ## Attributes

  *   `entity` (*type:* `String.t`, *default:* `nil`) - The Entity resource the log event is associated with. Format: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}
  *   `entityType` (*type:* `String.t`, *default:* `nil`) - Type of entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entity => String.t() | nil,
          :entityType => String.t() | nil
        }

  field(:entity)
  field(:entityType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1GovernanceEventEntity do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1GovernanceEventEntity.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1GovernanceEventEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
