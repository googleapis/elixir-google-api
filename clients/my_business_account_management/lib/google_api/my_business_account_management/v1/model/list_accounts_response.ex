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

defmodule GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountsResponse do
  @moduledoc """
  Response message for Accounts.ListAccounts.

  ## Attributes

  *   `accounts` (*type:* `list(GoogleApi.MyBusinessAccountManagement.V1.Model.Account.t)`, *default:* `nil`) - A collection of accounts to which the user has access. The personal account of the user doing the query will always be the first item of the result, unless it is filtered out.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If the number of accounts exceeds the requested page size, this field is populated with a token to fetch the next page of accounts on a subsequent call to `accounts.list`. If there are no more accounts, this field is not present in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accounts => list(GoogleApi.MyBusinessAccountManagement.V1.Model.Account.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:accounts, as: GoogleApi.MyBusinessAccountManagement.V1.Model.Account, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountsResponse do
  def decode(value, options) do
    GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
