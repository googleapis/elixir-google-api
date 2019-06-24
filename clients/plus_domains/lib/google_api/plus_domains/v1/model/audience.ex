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

defmodule GoogleApi.PlusDomains.V1.Model.Audience do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of this response for caching purposes.
  *   `item` (*type:* `GoogleApi.PlusDomains.V1.Model.PlusDomainsAclentryResource.t`, *default:* `nil`) - The access control list entry.
  *   `kind` (*type:* `String.t`, *default:* `plus#audience`) - Identifies this resource as an audience. Value: "plus#audience".
  *   `memberCount` (*type:* `integer()`, *default:* `nil`) - The number of people in this circle. This only applies if entity_type is CIRCLE.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - The circle members' visibility as chosen by the owner of the circle. This only applies for items with "item.type" equals "circle". Possible values are:  
      - "public" - Members are visible to the public. 
      - "limited" - Members are visible to a limited audience. 
      - "private" - Members are visible to the owner only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :item => GoogleApi.PlusDomains.V1.Model.PlusDomainsAclentryResource.t(),
          :kind => String.t(),
          :memberCount => integer(),
          :visibility => String.t()
        }

  field(:etag)
  field(:item, as: GoogleApi.PlusDomains.V1.Model.PlusDomainsAclentryResource)
  field(:kind)
  field(:memberCount)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.Audience do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.Audience.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.Audience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
