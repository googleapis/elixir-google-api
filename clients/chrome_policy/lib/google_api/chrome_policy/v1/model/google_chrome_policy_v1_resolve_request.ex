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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1ResolveRequest do
  @moduledoc """
  Request message for getting the resolved policy value for a specific target.

  ## Attributes

  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of policies to return, defaults to 100 and has a maximum of 1000.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - The page token used to retrieve a specific page of the request.
  *   `policySchemaFilter` (*type:* `String.t`, *default:* `nil`) - The schema filter to apply to the resolve request. Specify a schema name to view a particular schema, for example: chrome.users.ShowLogoutButton Wildcards are supported, but only in the leaf portion of the schema name. Wildcards cannot be used in namespace directly. Please read https://developers.google.com/chrome/policy/guides/policy-schemas for details on schema namepsaces. For example: Valid: "chrome.users.*", "chrome.users.apps.*", "chrome.printers.*" Invalid: "*", "*.users", "chrome.*", "chrome.*.apps.*"
  *   `policyTargetKey` (*type:* `GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey.t`, *default:* `nil`) - Required. The key of the target resource on which the policies should be resolved. The target resource must point to an Org Unit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :policySchemaFilter => String.t() | nil,
          :policyTargetKey =>
            GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey.t() | nil
        }

  field(:pageSize)
  field(:pageToken)
  field(:policySchemaFilter)
  field(:policyTargetKey, as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey)
end

defimpl Poison.Decoder, for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1ResolveRequest do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1ResolveRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1ResolveRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
