# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.YouTubeAnalytics.V2.Model.GroupItem do
  @moduledoc """
  A group item.

  ## Attributes

  *   `errors` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.Errors.t`, *default:* `nil`) - Apiary error details
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The Etag of this resource.
  *   `groupId` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the group that contains the
      item.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the `channel`, `video`,
      `playlist`, or `asset` resource that is included in the group. Note that
      this ID refers specifically to the inclusion of that resource in a
      particular group and is different than the channel ID, video ID,
      playlist ID, or asset ID that uniquely identifies the resource itself.
      The `resource.id` property's value specifies the unique channel, video,
      playlist, or asset ID.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies the API resource's type. The value will be `youtube#groupItem`.
  *   `resource` (*type:* `GoogleApi.YouTubeAnalytics.V2.Model.GroupItemResource.t`, *default:* `nil`) - The `resource` object contains information that identifies the item being
      added to the group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => GoogleApi.YouTubeAnalytics.V2.Model.Errors.t(),
          :etag => String.t(),
          :groupId => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :resource => GoogleApi.YouTubeAnalytics.V2.Model.GroupItemResource.t()
        }

  field(:errors, as: GoogleApi.YouTubeAnalytics.V2.Model.Errors)
  field(:etag)
  field(:groupId)
  field(:id)
  field(:kind)
  field(:resource, as: GoogleApi.YouTubeAnalytics.V2.Model.GroupItemResource)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeAnalytics.V2.Model.GroupItem do
  def decode(value, options) do
    GoogleApi.YouTubeAnalytics.V2.Model.GroupItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeAnalytics.V2.Model.GroupItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
