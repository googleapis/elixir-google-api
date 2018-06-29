# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.ActivityContentDetailsPlaylistItem do
  @moduledoc """
  Information about a new playlist item.

  ## Attributes

  - playlistId (String.t): The value that YouTube uses to uniquely identify the playlist. Defaults to: `null`.
  - playlistItemId (String.t): ID of the item within the playlist. Defaults to: `null`.
  - resourceId (ResourceId): The resourceId object contains information about the resource that was added to the playlist. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :playlistId => any(),
          :playlistItemId => any(),
          :resourceId => GoogleApi.YouTube.V3.Model.ResourceId.t()
        }

  field(:playlistId)
  field(:playlistItemId)
  field(:resourceId, as: GoogleApi.YouTube.V3.Model.ResourceId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ActivityContentDetailsPlaylistItem do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ActivityContentDetailsPlaylistItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ActivityContentDetailsPlaylistItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
