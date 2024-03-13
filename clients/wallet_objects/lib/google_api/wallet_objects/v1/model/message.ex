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

defmodule GoogleApi.WalletObjects.V1.Model.Message do
  @moduledoc """
  A message that will be displayed with a Valuable

  ## Attributes

  *   `body` (*type:* `String.t`, *default:* `nil`) - The message body.
  *   `displayInterval` (*type:* `GoogleApi.WalletObjects.V1.Model.TimeInterval.t`, *default:* `nil`) - The period of time that the message will be displayed to users. You can define both a `startTime` and `endTime` for each message. A message is displayed immediately after a Wallet Object is inserted unless a `startTime` is set. The message will appear in a list of messages indefinitely if `endTime` is not provided.
  *   `header` (*type:* `String.t`, *default:* `nil`) - The message header.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID associated with a message. This field is here to enable ease of management of messages. Notice ID values could possibly duplicate across multiple messages in the same class/instance, and care must be taken to select a reasonable ID for each message.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#walletObjectMessage"`.
  *   `localizedBody` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the message body.
  *   `localizedHeader` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the message header.
  *   `messageType` (*type:* `String.t`, *default:* `nil`) - The message type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => String.t() | nil,
          :displayInterval => GoogleApi.WalletObjects.V1.Model.TimeInterval.t() | nil,
          :header => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :localizedBody => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :localizedHeader => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :messageType => String.t() | nil
        }

  field(:body)
  field(:displayInterval, as: GoogleApi.WalletObjects.V1.Model.TimeInterval)
  field(:header)
  field(:id)
  field(:kind)
  field(:localizedBody, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:localizedHeader, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:messageType)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end