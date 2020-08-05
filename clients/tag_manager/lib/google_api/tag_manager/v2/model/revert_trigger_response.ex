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

defmodule GoogleApi.TagManager.V2.Model.RevertTriggerResponse do
  @moduledoc """
  The result of reverting a trigger in a workspace.

  ## Attributes

  *   `trigger` (*type:* `GoogleApi.TagManager.V2.Model.Trigger.t`, *default:* `nil`) - Trigger as it appears in the latest container version since the last workspace synchronization operation. If no trigger is present, that means the trigger was deleted in the latest container version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :trigger => GoogleApi.TagManager.V2.Model.Trigger.t()
        }

  field(:trigger, as: GoogleApi.TagManager.V2.Model.Trigger)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.RevertTriggerResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.RevertTriggerResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.RevertTriggerResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
