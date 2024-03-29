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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SessionEntityType do
  @moduledoc """
  A session represents a conversation between a Dialogflow agent and an end-user. You can create special entities, called session entities, during a session. Session entities can extend or replace custom entity types and only exist during the session that they were created for. All session data, including session entities, is stored by Dialogflow for 20 minutes. For more information, see the [session entity guide](https://cloud.google.com/dialogflow/docs/entities-session).

  ## Attributes

  *   `entities` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2EntityTypeEntity.t)`, *default:* `nil`) - Required. The collection of entities associated with this session entity type.
  *   `entityOverrideMode` (*type:* `String.t`, *default:* `nil`) - Required. Indicates whether the additional data should override or supplement the custom entity type definition.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier of this session entity type. Format: `projects//agent/sessions//entityTypes/`, or `projects//agent/environments//users//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entities =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2EntityTypeEntity.t()) | nil,
          :entityOverrideMode => String.t() | nil,
          :name => String.t() | nil
        }

  field(:entities,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2EntityTypeEntity,
    type: :list
  )

  field(:entityOverrideMode)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SessionEntityType do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SessionEntityType.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SessionEntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
