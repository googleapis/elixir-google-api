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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListCreativeStatusBreakdownByCreativeResponse do
  @moduledoc """
  Response message for listing all creatives associated with a given filtered bid reason.

  ## Attributes

  - filteredBidCreativeRows ([FilteredBidCreativeRow]): List of rows, with counts of bids with a given creative status aggregated by creative. Defaults to: `null`.
  - nextPageToken (String.t): A token to retrieve the next page of results. Pass this value in the ListCreativeStatusBreakdownByCreativeRequest.pageToken field in the subsequent call to the filteredBids.creatives.list method to retrieve the next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filteredBidCreativeRows =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidCreativeRow.t()),
          :nextPageToken => any()
        }

  field(:filteredBidCreativeRows,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidCreativeRow,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListCreativeStatusBreakdownByCreativeResponse do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ListCreativeStatusBreakdownByCreativeResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListCreativeStatusBreakdownByCreativeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
