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

defmodule GoogleApi.Compute.V1.Model.HttpRedirectAction do
  @moduledoc """
  Specifies settings for an HTTP redirect.

  ## Attributes

  *   `hostRedirect` (*type:* `String.t`, *default:* `nil`) - The host that will be used in the redirect response instead of the one that was supplied in the request.
      The value must be between 1 and 255 characters.
  *   `httpsRedirect` (*type:* `boolean()`, *default:* `nil`) - If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request.
      This must only be set for UrlMaps used in TargetHttpProxys. Setting this true for TargetHttpsProxy is not permitted.
      The default is set to false.
  *   `pathRedirect` (*type:* `String.t`, *default:* `nil`) - The path that will be used in the redirect response instead of the one that was supplied in the request.
      Only one of pathRedirect or prefixRedirect must be specified.
      The value must be between 1 and 1024 characters.
  *   `prefixRedirect` (*type:* `String.t`, *default:* `nil`) - The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch, retaining the remaining portion of the URL before redirecting the request.
  *   `redirectResponseCode` (*type:* `String.t`, *default:* `nil`) - The HTTP Status code to use for this RedirectAction.
      Supported values are:  
      - MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301. 
      - FOUND, which corresponds to 302. 
      - SEE_OTHER which corresponds to 303. 
      - TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method will be retained. 
      - PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method will be retained.
  *   `stripQuery` (*type:* `boolean()`, *default:* `nil`) - If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained.
      The default is set to false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hostRedirect => String.t(),
          :httpsRedirect => boolean(),
          :pathRedirect => String.t(),
          :prefixRedirect => String.t(),
          :redirectResponseCode => String.t(),
          :stripQuery => boolean()
        }

  field(:hostRedirect)
  field(:httpsRedirect)
  field(:pathRedirect)
  field(:prefixRedirect)
  field(:redirectResponseCode)
  field(:stripQuery)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpRedirectAction do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpRedirectAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpRedirectAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
