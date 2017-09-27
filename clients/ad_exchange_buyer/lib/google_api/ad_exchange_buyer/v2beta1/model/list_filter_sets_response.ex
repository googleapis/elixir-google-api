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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListFilterSetsResponse do
  @moduledoc """
  Response message for listing filter sets.

  ## Attributes

  - filterSets (List[FilterSet]): The filter sets belonging to the buyer. Defaults to: `null`.
  - nextPageToken (String): A token to retrieve the next page of results. Pass this value in the ListFilterSetsRequest.pageToken field in the subsequent call to the accounts.filterSets.list method to retrieve the next page of results. Defaults to: `null`.
  """

  defstruct [
    :"filterSets",
    :"nextPageToken"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListFilterSetsResponse do
  import GoogleApi.AdExchangeBuyer.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"filterSets", :list, GoogleApi.AdExchangeBuyer.V2beta1.Model.FilterSet, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListFilterSetsResponse do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

