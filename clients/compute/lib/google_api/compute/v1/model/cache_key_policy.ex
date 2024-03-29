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

defmodule GoogleApi.Compute.V1.Model.CacheKeyPolicy do
  @moduledoc """
  Message containing what to include in the cache key for a request for Cloud CDN.

  ## Attributes

  *   `includeHost` (*type:* `boolean()`, *default:* `nil`) - If true, requests to different hosts will be cached separately.
  *   `includeHttpHeaders` (*type:* `list(String.t)`, *default:* `nil`) - Allows HTTP request headers (by name) to be used in the cache key.
  *   `includeNamedCookies` (*type:* `list(String.t)`, *default:* `nil`) - Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  *   `includeProtocol` (*type:* `boolean()`, *default:* `nil`) - If true, http and https requests will be cached separately.
  *   `includeQueryString` (*type:* `boolean()`, *default:* `nil`) - If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  *   `queryStringBlacklist` (*type:* `list(String.t)`, *default:* `nil`) - Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  *   `queryStringWhitelist` (*type:* `list(String.t)`, *default:* `nil`) - Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeHost => boolean() | nil,
          :includeHttpHeaders => list(String.t()) | nil,
          :includeNamedCookies => list(String.t()) | nil,
          :includeProtocol => boolean() | nil,
          :includeQueryString => boolean() | nil,
          :queryStringBlacklist => list(String.t()) | nil,
          :queryStringWhitelist => list(String.t()) | nil
        }

  field(:includeHost)
  field(:includeHttpHeaders, type: :list)
  field(:includeNamedCookies, type: :list)
  field(:includeProtocol)
  field(:includeQueryString)
  field(:queryStringBlacklist, type: :list)
  field(:queryStringWhitelist, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.CacheKeyPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.CacheKeyPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.CacheKeyPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
