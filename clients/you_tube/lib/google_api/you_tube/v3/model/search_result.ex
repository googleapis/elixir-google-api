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

defmodule GoogleApi.YouTube.V3.Model.SearchResult do
  @moduledoc """
  A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data.

  ## Attributes

  - etag (String.t): Etag of this resource. Defaults to: `null`.
  - id (ResourceId): The id object contains information that can be used to uniquely identify the resource that matches the search request. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;youtube#searchResult\&quot;. Defaults to: `null`.
  - snippet (SearchResultSnippet): The snippet object contains basic details about a search result, such as its title or description. For example, if the search result is a video, then the title will be the video&#39;s title and the description will be the video&#39;s description. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :id => GoogleApi.YouTube.V3.Model.ResourceId.t(),
          :kind => any(),
          :snippet => GoogleApi.YouTube.V3.Model.SearchResultSnippet.t()
        }

  field(:etag)
  field(:id, as: GoogleApi.YouTube.V3.Model.ResourceId)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.SearchResultSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.SearchResult do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.SearchResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.SearchResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
