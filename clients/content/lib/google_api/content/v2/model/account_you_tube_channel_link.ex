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

defmodule GoogleApi.Content.V2.Model.AccountYouTubeChannelLink do
  @moduledoc """


  ## Attributes

  *   `channelId` (*type:* `String.t`, *default:* `nil`) - Channel ID.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the link between this Merchant Center account and the YouTube channel. Upon retrieval, it represents the actual status of the link and can be either active if it was approved in YT Creator Studio or pending if it's pending approval. Upon insertion, it represents the intended status of the link. Re-uploading a link with status active when it's still pending or with status pending when it's already active will have no effect: the status will remain unchanged. Re-uploading a link with deprecated status inactive is equivalent to not submitting the link at all and will delete the link if it was active or cancel the link request if it was pending.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelId => String.t(),
          :status => String.t()
        }

  field(:channelId)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountYouTubeChannelLink do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccountYouTubeChannelLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountYouTubeChannelLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
