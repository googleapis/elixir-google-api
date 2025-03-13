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

defmodule GoogleApi.TagManager.V2.Model.Workspace do
  @moduledoc """
  Represents a Google Tag Manager Container Workspace.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - GTM Account ID.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - GTM Container ID.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Workspace description.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the GTM Workspace as computed at storage time. This value is recomputed whenever the workspace is modified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Workspace display name.
  *   `path` (*type:* `String.t`, *default:* `nil`) - GTM Workspace's API relative path.
  *   `tagManagerUrl` (*type:* `String.t`, *default:* `nil`) - Auto generated link to the tag manager UI
  *   `workspaceId` (*type:* `String.t`, *default:* `nil`) - The Workspace ID uniquely identifies the GTM Workspace.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :containerId => String.t() | nil,
          :description => String.t() | nil,
          :fingerprint => String.t() | nil,
          :name => String.t() | nil,
          :path => String.t() | nil,
          :tagManagerUrl => String.t() | nil,
          :workspaceId => String.t() | nil
        }

  field(:accountId)
  field(:containerId)
  field(:description)
  field(:fingerprint)
  field(:name)
  field(:path)
  field(:tagManagerUrl)
  field(:workspaceId)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Workspace do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Workspace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Workspace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
