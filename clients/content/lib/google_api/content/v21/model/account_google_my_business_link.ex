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

defmodule GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink do
  @moduledoc """


  ## Attributes

  *   `gmbAccountId` (*type:* `String.t`, *default:* `nil`) - The ID of the Business Profile. If this is provided, then `gmbEmail` is ignored. The value of this field should match the `accountId` used by the Business Profile API.
  *   `gmbEmail` (*type:* `String.t`, *default:* `nil`) - The Business Profile email address of a specific account within a Business Profile. A sample account within a Business Profile could be a business account with set of locations, managed under the Business Profile.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the link between this Merchant Center account and the Business Profile. Acceptable values are: - "`active`" - "`pending`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gmbAccountId => String.t() | nil,
          :gmbEmail => String.t() | nil,
          :status => String.t() | nil
        }

  field(:gmbAccountId)
  field(:gmbEmail)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
