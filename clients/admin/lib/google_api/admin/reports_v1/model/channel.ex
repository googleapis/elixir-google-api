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

defmodule GoogleApi.Admin.Reports_v1.Model.Channel do
  @moduledoc """
  A notification channel used to watch for resource changes.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - The address where notifications are delivered for this channel.
  *   `expiration` (*type:* `String.t`, *default:* `nil`) - Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A UUID or similar unique string that identifies this channel.
  *   `kind` (*type:* `String.t`, *default:* `api#channel`) - Identifies this as a notification channel used to watch for changes to a resource, which is "`api#channel`".
  *   `params` (*type:* `map()`, *default:* `nil`) - Additional parameters controlling delivery channel behavior. Optional.
  *   `payload` (*type:* `boolean()`, *default:* `nil`) - A Boolean value to indicate whether payload is wanted. A payload is data that is sent in the body of an HTTP POST, PUT, or PATCH message and contains important information about the request. Optional.
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
  *   `resourceUri` (*type:* `String.t`, *default:* `nil`) - A version-specific identifier for the watched resource.
  *   `token` (*type:* `String.t`, *default:* `nil`) - An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of delivery mechanism used for this channel. The value should be set to `"web_hook"`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :expiration => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :params => map() | nil,
          :payload => boolean() | nil,
          :resourceId => String.t() | nil,
          :resourceUri => String.t() | nil,
          :token => String.t() | nil,
          :type => String.t() | nil
        }

  field(:address)
  field(:expiration)
  field(:id)
  field(:kind)
  field(:params, type: :map)
  field(:payload)
  field(:resourceId)
  field(:resourceUri)
  field(:token)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.Channel do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.Channel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.Channel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
