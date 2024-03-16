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

defmodule GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1Run do
  @moduledoc """
  A lineage run represents an execution of a process that creates lineage events.

  ## Attributes

  *   `attributes` (*type:* `map()`, *default:* `nil`) - Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The timestamp of the end of the run.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The timestamp of the start of the run.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The state of the run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => map() | nil,
          :displayName => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil
        }

  field(:attributes, type: :map)
  field(:displayName)
  field(:endTime, as: DateTime)
  field(:name)
  field(:startTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1Run do
  def decode(value, options) do
    GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1Run.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1Run do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end