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

defmodule GoogleApi.Content.V21.Model.AccountsAuthInfoResponse do
  @moduledoc """


  ## Attributes

  *   `accountIdentifiers` (*type:* `list(GoogleApi.Content.V21.Model.AccountIdentifier.t)`, *default:* `nil`) - The account identifiers corresponding to the authenticated user. - For an individual account: only the merchant ID is defined - For an aggregator: only the aggregator ID is defined - For a subaccount of an MCA: both the merchant ID and the aggregator ID are defined. 
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "content#accountsAuthInfoResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountIdentifiers => list(GoogleApi.Content.V21.Model.AccountIdentifier.t()) | nil,
          :kind => String.t() | nil
        }

  field(:accountIdentifiers, as: GoogleApi.Content.V21.Model.AccountIdentifier, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountsAuthInfoResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountsAuthInfoResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountsAuthInfoResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
