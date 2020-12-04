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

defmodule GoogleApi.Games.V1.Model.SnapshotCoverImageResource do
  @moduledoc """
  Identifies a snapshot cover image resource. The image is provided by the game.

  ## Attributes

  *   `contentHash` (*type:* `list(GoogleApi.Games.V1.Model.ContentHash.t)`, *default:* `nil`) - Output only. Hash-like weak identifier of the uploaded image bytes, consistent per player per application per hash version. Within the context of a single player/application, it's guaranteed that two identical images coming from two different uploads will have the same content hash for the same hash algorithm version. It's extremely likely, though not guaranteed, that if two content hashes are equal, the images are identical. More than one content hash can be returned if more than one hash versions are supported.
  *   `downloadUrl` (*type:* `String.t`, *default:* `nil`) - Output only. A URL the client can use to download the image. May vary across requests, and only guaranteed to be valid for a short time after it is returned.
  *   `height` (*type:* `integer()`, *default:* `nil`) - The height of the image in pixels.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The MIME type of the image.
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - The ID of the image resource. It's guaranteed that if two IDs are equal then the contents are equal as well. It's not guaranteed that two identical blobs coming from separate uploads have the same ID. The resource ID can only be used within the application, user and resource type it was originally returned for. For example, it's not possible to use SnapshotDataResource's resource ID as the resource_id of a SnapshotCoverImageResource, even if the blob is a valid image file.
  *   `width` (*type:* `integer()`, *default:* `nil`) - The width of the image in pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentHash => list(GoogleApi.Games.V1.Model.ContentHash.t()),
          :downloadUrl => String.t(),
          :height => integer(),
          :mimeType => String.t(),
          :resourceId => String.t(),
          :width => integer()
        }

  field(:contentHash, as: GoogleApi.Games.V1.Model.ContentHash, type: :list)
  field(:downloadUrl)
  field(:height)
  field(:mimeType)
  field(:resourceId)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.SnapshotCoverImageResource do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.SnapshotCoverImageResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.SnapshotCoverImageResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
