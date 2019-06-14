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

defmodule GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse do
  @moduledoc """
  The response returned from the ListOrgPolicies method. It will be empty
  if no `Policies` are set on the resource.

  ## Attributes

  - nextPageToken (String.t): Page token used to retrieve the next page. This is currently not used, but
  the server may at any point start supplying a valid token. Defaults to `nil`.
  - policies (list(GoogleApi.CloudResourceManager.V1.Model.OrgPolicy.t)): The `Policies` that are set on the resource. It will be empty if no
  `Policies` are set. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :policies => list(GoogleApi.CloudResourceManager.V1.Model.OrgPolicy.t())
        }

  field(:nextPageToken)
  field(:policies, as: GoogleApi.CloudResourceManager.V1.Model.OrgPolicy, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
