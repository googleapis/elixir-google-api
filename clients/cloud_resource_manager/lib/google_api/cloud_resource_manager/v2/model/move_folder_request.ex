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

defmodule GoogleApi.CloudResourceManager.V2.Model.MoveFolderRequest do
  @moduledoc """
  The MoveFolder request message.

  ## Attributes

  *   `destinationParent` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Folder or Organization to reparent the folder under. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationParent => String.t() | nil
        }

  field(:destinationParent)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V2.Model.MoveFolderRequest do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V2.Model.MoveFolderRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V2.Model.MoveFolderRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
