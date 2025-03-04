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

defmodule GoogleApi.YouTube.V3.Model.VideoStatus do
  @moduledoc """
  Basic details about a video category, such as its localized title. Next Id: 19

  ## Attributes

  *   `containsSyntheticMedia` (*type:* `boolean()`, *default:* `nil`) - Indicates if the video contains altered or synthetic media.
  *   `embeddable` (*type:* `boolean()`, *default:* `nil`) - This value indicates if the video can be embedded on another website. @mutable youtube.videos.insert youtube.videos.update
  *   `failureReason` (*type:* `String.t`, *default:* `nil`) - This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.
  *   `license` (*type:* `String.t`, *default:* `nil`) - The video's license. @mutable youtube.videos.insert youtube.videos.update
  *   `madeForKids` (*type:* `boolean()`, *default:* `nil`) - 
  *   `privacyStatus` (*type:* `String.t`, *default:* `nil`) - The video's privacy status.
  *   `publicStatsViewable` (*type:* `boolean()`, *default:* `nil`) - This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. @mutable youtube.videos.insert youtube.videos.update
  *   `publishAt` (*type:* `DateTime.t`, *default:* `nil`) - The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private..
  *   `rejectionReason` (*type:* `String.t`, *default:* `nil`) - This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.
  *   `selfDeclaredMadeForKids` (*type:* `boolean()`, *default:* `nil`) - 
  *   `uploadStatus` (*type:* `String.t`, *default:* `nil`) - The status of the uploaded video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containsSyntheticMedia => boolean() | nil,
          :embeddable => boolean() | nil,
          :failureReason => String.t() | nil,
          :license => String.t() | nil,
          :madeForKids => boolean() | nil,
          :privacyStatus => String.t() | nil,
          :publicStatsViewable => boolean() | nil,
          :publishAt => DateTime.t() | nil,
          :rejectionReason => String.t() | nil,
          :selfDeclaredMadeForKids => boolean() | nil,
          :uploadStatus => String.t() | nil
        }

  field(:containsSyntheticMedia)
  field(:embeddable)
  field(:failureReason)
  field(:license)
  field(:madeForKids)
  field(:privacyStatus)
  field(:publicStatsViewable)
  field(:publishAt, as: DateTime)
  field(:rejectionReason)
  field(:selfDeclaredMadeForKids)
  field(:uploadStatus)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoStatus do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
