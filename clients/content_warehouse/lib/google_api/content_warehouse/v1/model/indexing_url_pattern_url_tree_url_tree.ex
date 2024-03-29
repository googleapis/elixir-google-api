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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTree do
  @moduledoc """


  ## Attributes

  *   `bigBranch` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeBigTreeBranch.t)`, *default:* `nil`) - Keeping information for dominating branches separately, to prevent docs on smaller branches from being dropping during sampling.
  *   `debugInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeDebugInfo.t`, *default:* `nil`) - 
  *   `key` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey.t`, *default:* `nil`) - 
  *   `node` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeNode.t)`, *default:* `nil`) - node(0) is root.
  *   `retrievalTimestamp` (*type:* `integer()`, *default:* `nil`) - Used in url pattern matcher for cache invalidation.
  *   `site` (*type:* `String.t`, *default:* `nil`) - The key for this UrlTree, also will be the key in sstable. The old format is site, while the new format will be UrlTreeKey. Only one field can be set in the same time for site and key.
  *   `timestamp` (*type:* `integer()`, *default:* `nil`) - The time when this UrlTree is built, encoded as seconds past the epoch (Jan 1, 1970).
  *   `treeInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Any additional information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigBranch =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeBigTreeBranch.t())
            | nil,
          :debugInfo =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeDebugInfo.t()
            | nil,
          :key =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey.t() | nil,
          :node =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeNode.t())
            | nil,
          :retrievalTimestamp => integer() | nil,
          :site => String.t() | nil,
          :timestamp => integer() | nil,
          :treeInfo => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil
        }

  field(:bigBranch,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeBigTreeBranch,
    type: :list
  )

  field(:debugInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeDebugInfo
  )

  field(:key, as: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey)

  field(:node,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeNode,
    type: :list
  )

  field(:retrievalTimestamp)
  field(:site)
  field(:timestamp)
  field(:treeInfo, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTree do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTree.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTree do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
