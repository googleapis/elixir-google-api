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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.Channel do
  @moduledoc """
  A `Channel` represents a stream of releases for a site. All sites have a default `live` channel that serves content to the Firebase-provided subdomains and any connected custom domains.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the channel was created.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Text labels used for extra metadata and/or filtering.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  *   `release` (*type:* `GoogleApi.FirebaseHosting.V1beta1.Model.Release.t`, *default:* `nil`) - Output only. The current release for the channel, if any.
  *   `retainedReleaseCount` (*type:* `integer()`, *default:* `nil`) - The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the channel was last updated.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Output only. The URL at which the content of this channel's current release can be viewed. This URL is a Firebase-provided subdomain of `web.app`. The content of this channel's current release can also be viewed at the Firebase-provided subdomain of `firebaseapp.com`. If this channel is the `live` channel for the Hosting site, then the content of this channel's current release can also be viewed at any connected custom domains.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :expireTime => DateTime.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :release => GoogleApi.FirebaseHosting.V1beta1.Model.Release.t() | nil,
          :retainedReleaseCount => integer() | nil,
          :ttl => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :url => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:expireTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
  field(:release, as: GoogleApi.FirebaseHosting.V1beta1.Model.Release)
  field(:retainedReleaseCount)
  field(:ttl)
  field(:updateTime, as: DateTime)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.Channel do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.Channel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.Channel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
