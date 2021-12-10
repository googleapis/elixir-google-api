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

defmodule GoogleApi.GmailPostmasterTools.V1.Model.FeedbackLoop do
  @moduledoc """
  [Feedback loop](https://support.google.com/mail/answer/6254652) identifier information.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Feedback loop identifier that uniquely identifies individual campaigns.
  *   `spamRatio` (*type:* `float()`, *default:* `nil`) - The ratio of user marked spam messages with the identifier vs the total number of inboxed messages with that identifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :spamRatio => float() | nil
        }

  field(:id)
  field(:spamRatio)
end

defimpl Poison.Decoder, for: GoogleApi.GmailPostmasterTools.V1.Model.FeedbackLoop do
  def decode(value, options) do
    GoogleApi.GmailPostmasterTools.V1.Model.FeedbackLoop.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GmailPostmasterTools.V1.Model.FeedbackLoop do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
