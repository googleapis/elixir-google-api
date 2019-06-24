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

defmodule GoogleApi.PlusDomains.V1.Model.PeopleFeed do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of this response for caching purposes.
  *   `items` (*type:* `list(GoogleApi.PlusDomains.V1.Model.Person.t)`, *default:* `nil`) - The people in this page of results. Each item includes the id, displayName, image, and url for the person. To retrieve additional profile data, see the people.get method.
  *   `kind` (*type:* `String.t`, *default:* `plus#peopleFeed`) - Identifies this resource as a collection of people. Value: "plus#peopleFeed".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link to this resource.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of this collection of people.
  *   `totalItems` (*type:* `integer()`, *default:* `nil`) - The total number of people available in this list. The number of people in a response might be smaller due to paging. This might not be set for all collections.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.PlusDomains.V1.Model.Person.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :title => String.t(),
          :totalItems => integer()
        }

  field(:etag)
  field(:items, as: GoogleApi.PlusDomains.V1.Model.Person, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:title)
  field(:totalItems)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.PeopleFeed do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.PeopleFeed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.PeopleFeed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
