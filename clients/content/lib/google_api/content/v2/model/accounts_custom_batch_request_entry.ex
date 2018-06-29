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

defmodule GoogleApi.Content.V2.Model.AccountsCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accounts request.

  ## Attributes

  - account (Account): The account to create or update. Only defined if the method is insert or update. Defaults to: `null`.
  - accountId (String.t): The ID of the targeted account. Only defined if the method is not insert. Defaults to: `null`.
  - batchId (integer()): An entry ID, unique within the batch request. Defaults to: `null`.
  - force (boolean()): Whether the account should be deleted if the account has offers. Only applicable if the method is delete. Defaults to: `null`.
  - linkRequest (AccountsCustomBatchRequestEntryLinkRequest): Details about the link request. Defaults to: `null`.
  - merchantId (String.t): The ID of the managing account. Defaults to: `null`.
  - method (String.t): The method of the batch entry. Defaults to: `null`.
  - overwrite (boolean()): Only applicable if the method is claimwebsite. Indicates whether or not to take the claim from another account in case there is a conflict. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => GoogleApi.Content.V2.Model.Account.t(),
          :accountId => any(),
          :batchId => any(),
          :force => any(),
          :linkRequest =>
            GoogleApi.Content.V2.Model.AccountsCustomBatchRequestEntryLinkRequest.t(),
          :merchantId => any(),
          :method => any(),
          :overwrite => any()
        }

  field(:account, as: GoogleApi.Content.V2.Model.Account)
  field(:accountId)
  field(:batchId)
  field(:force)
  field(:linkRequest, as: GoogleApi.Content.V2.Model.AccountsCustomBatchRequestEntryLinkRequest)
  field(:merchantId)
  field(:method)
  field(:overwrite)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountsCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccountsCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountsCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
