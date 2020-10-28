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

defmodule GoogleApi.Content.V21.Model.AccountsCustomBatchRequestEntryLinkRequest do
  @moduledoc """


  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Action to perform for this link. The `"request"` action is only available to select merchants. Acceptable values are: - "`approve`" - "`remove`" - "`request`" 
  *   `linkType` (*type:* `String.t`, *default:* `nil`) - Type of the link between the two accounts. Acceptable values are: - "`channelPartner`" - "`eCommercePlatform`" 
  *   `linkedAccountId` (*type:* `String.t`, *default:* `nil`) - The ID of the linked account.
  *   `services` (*type:* `list(String.t)`, *default:* `nil`) - List of provided services.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :linkType => String.t(),
          :linkedAccountId => String.t(),
          :services => list(String.t())
        }

  field(:action)
  field(:linkType)
  field(:linkedAccountId)
  field(:services, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Content.V21.Model.AccountsCustomBatchRequestEntryLinkRequest do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountsCustomBatchRequestEntryLinkRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Content.V21.Model.AccountsCustomBatchRequestEntryLinkRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
