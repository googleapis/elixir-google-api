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

defmodule GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5SearchHashesResponse do
  @moduledoc """
  The response returned after searching threat hashes. If nothing is found, the server will return an OK status (HTTP status code 200) with the `full_hashes` field empty, rather than returning a NOT_FOUND status (HTTP status code 404). **What's new in V5**: There is a separation between `FullHash` and `FullHashDetail`. In the case when a hash represents a site having multiple threats (e.g. both MALWARE and SOCIAL_ENGINEERING), the full hash does not need to be sent twice as in V4. Furthermore, the cache duration has been simplified into a single `cache_duration` field.

  ## Attributes

  *   `cacheDuration` (*type:* `String.t`, *default:* `nil`) - The client-side cache duration. The client MUST add this duration to the current time to determine the expiration time. The expiration time then applies to every hash prefix queried by the client in the request, regardless of how many full hashes are returned in the response. Even if the server returns no full hashes for a particular hash prefix, this fact MUST also be cached by the client. If and only if the field `full_hashes` is empty, the client MAY increase the `cache_duration` to determine a new expiration that is later than that specified by the server. In any case, the increased cache duration must not be longer than 24 hours. Important: the client MUST NOT assume that the server will return the same cache duration for all responses. The server MAY choose different cache durations for different responses depending on the situation.
  *   `fullHashes` (*type:* `list(GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5FullHash.t)`, *default:* `nil`) - Unordered list. The unordered list of full hashes found.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheDuration => String.t() | nil,
          :fullHashes =>
            list(GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5FullHash.t()) | nil
        }

  field(:cacheDuration)

  field(:fullHashes,
    as: GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5FullHash,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5SearchHashesResponse do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5SearchHashesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SafeBrowsing.V5.Model.GoogleSecuritySafebrowsingV5SearchHashesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
