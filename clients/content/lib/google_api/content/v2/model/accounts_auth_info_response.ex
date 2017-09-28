# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.AccountsAuthInfoResponse do
  @moduledoc """
  

  ## Attributes

  - accountIdentifiers (List[AccountIdentifier]): The account identifiers corresponding to the authenticated user. - For an individual account: only the merchant ID is defined - For an aggregator: only the aggregator ID is defined - For a subaccount of an MCA: both the merchant ID and the aggregator ID are defined. Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;content#accountsAuthInfoResponse\&quot;. Defaults to: `null`.
  """

  defstruct [
    :"accountIdentifiers",
    :"kind"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountsAuthInfoResponse do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"accountIdentifiers", :list, GoogleApi.Content.V2.Model.AccountIdentifier, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountsAuthInfoResponse do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

