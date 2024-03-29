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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData do
  @moduledoc """
  Contains information about 3 versions of the content of a document: 1. Original: the crawled content (possibly patched in ConversionFilters). 2. Processed: the final version of the content indexed in Web search. 3. Intermediate (no longer generated): intermediate version between the original and the processed content. All 3 versions of the content consist of HTTP headers (in unknown encoding) concatenated with the document body (in interchange valid UTF-8 encoding).

  ## Attributes

  *   `range` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentDataRange.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentDataRange.t())
            | nil
        }

  field(:range,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentDataRange,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
