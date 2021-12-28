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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Changelog do
  @moduledoc """
  Changelogs represents a change made to a given agent.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - The action of the change.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp of the change.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The affected resource display name of the change.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the changelog. Format: `projects//locations//agents//changelogs/`.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - The affected resource name of the change.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The affected resource type.
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - Email address of the authenticated user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :resource => String.t() | nil,
          :type => String.t() | nil,
          :userEmail => String.t() | nil
        }

  field(:action)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:name)
  field(:resource)
  field(:type)
  field(:userEmail)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Changelog do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Changelog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Changelog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
