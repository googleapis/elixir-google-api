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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem do
  @moduledoc """
  Proto populated into shards and copied to superroot. Message storing a versioned TopicEmbeddings scores. This is copied from TopicEmbeddings in docjoins.

  ## Attributes

  *   `pageEmbedding` (*type:* `String.t`, *default:* `nil`) - 
  *   `siteEmbedding` (*type:* `String.t`, *default:* `nil`) - Compressed site/page embeddings.
  *   `siteFocusScore` (*type:* `number()`, *default:* `nil`) - Number denoting how much a site is focused on one topic.
  *   `siteRadius` (*type:* `number()`, *default:* `nil`) - The measure of how far page_embeddings deviate from the site_embedding.
  *   `versionId` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageEmbedding => String.t() | nil,
          :siteEmbedding => String.t() | nil,
          :siteFocusScore => number() | nil,
          :siteRadius => number() | nil,
          :versionId => integer() | nil
        }

  field(:pageEmbedding)
  field(:siteEmbedding)
  field(:siteFocusScore)
  field(:siteRadius)
  field(:versionId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityAuthorityTopicEmbeddingsVersionedItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end