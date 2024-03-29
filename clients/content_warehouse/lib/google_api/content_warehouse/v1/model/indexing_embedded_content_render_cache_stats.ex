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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats do
  @moduledoc """
  Fields used to track cache use in the rendering microservice. Next tag available: 6

  ## Attributes

  *   `cacheExpireTimestampUsec` (*type:* `String.t`, *default:* `nil`) - When the rendered content would expire from the cache in microseconds.
  *   `crawledSimhashDistance` (*type:* `integer()`, *default:* `nil`) - 
  *   `lastRenderedTimestampUsec` (*type:* `String.t`, *default:* `nil`) - The last time the document was rendered, in microseconds. Does not update in case of cache use.
  *   `renderCache` (*type:* `String.t`, *default:* `nil`) - 
  *   `renderedSimhashDistance` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheExpireTimestampUsec => String.t() | nil,
          :crawledSimhashDistance => integer() | nil,
          :lastRenderedTimestampUsec => String.t() | nil,
          :renderCache => String.t() | nil,
          :renderedSimhashDistance => integer() | nil
        }

  field(:cacheExpireTimestampUsec)
  field(:crawledSimhashDistance)
  field(:lastRenderedTimestampUsec)
  field(:renderCache)
  field(:renderedSimhashDistance)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
