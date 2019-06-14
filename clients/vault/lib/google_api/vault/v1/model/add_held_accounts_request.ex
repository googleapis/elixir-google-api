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

defmodule GoogleApi.Vault.V1.Model.AddHeldAccountsRequest do
  @moduledoc """
  Add a list of accounts to a hold.

  ## Attributes

  - accountIds (list(String.t)): Account ids to identify which accounts to add. Only account_ids or only
  emails should be specified, but not both. Defaults to `nil`.
  - emails (list(String.t)): Emails to identify which accounts to add. Only emails or only account_ids
  should be specified, but not both. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountIds => list(String.t()),
          :emails => list(String.t())
        }

  field(:accountIds, type: :list)
  field(:emails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.AddHeldAccountsRequest do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.AddHeldAccountsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.AddHeldAccountsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
