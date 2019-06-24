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

defmodule GoogleApi.Indexing.V3.Model.UrlNotification do
  @moduledoc """
  `UrlNotification` is the resource used in all Indexing API calls.
  It describes one event in the life cycle of a Web Document.

  ## Attributes

  *   `notifyTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation timestamp for this notification.
      Users should _not_ specify it, the field is ignored at the request time.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The URL life cycle event that Google is being notified about.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The object of this notification. The URL must be owned by the publisher
      of this notification and, in case of `URL_UPDATED` notifications, it _must_
      be crawlable by Google.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :notifyTime => DateTime.t(),
          :type => String.t(),
          :url => String.t()
        }

  field(:notifyTime, as: DateTime)
  field(:type)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Indexing.V3.Model.UrlNotification do
  def decode(value, options) do
    GoogleApi.Indexing.V3.Model.UrlNotification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Indexing.V3.Model.UrlNotification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
