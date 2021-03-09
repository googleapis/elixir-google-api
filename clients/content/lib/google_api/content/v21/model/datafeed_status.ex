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

defmodule GoogleApi.Content.V21.Model.DatafeedStatus do
  @moduledoc """
  The status of a datafeed, i.e., the result of the last retrieval of the datafeed computed asynchronously when the feed processing is finished.

  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - The country for which the status is reported, represented as a CLDR territory code.
  *   `datafeedId` (*type:* `String.t`, *default:* `nil`) - The ID of the feed for which the status is reported.
  *   `errors` (*type:* `list(GoogleApi.Content.V21.Model.DatafeedStatusError.t)`, *default:* `nil`) - The list of errors occurring in the feed.
  *   `itemsTotal` (*type:* `String.t`, *default:* `nil`) - The number of items in the feed that were processed.
  *   `itemsValid` (*type:* `String.t`, *default:* `nil`) - The number of items in the feed that were valid.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#datafeedStatus`"
  *   `language` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO 639-1 language for which the status is reported.
  *   `lastUploadDate` (*type:* `String.t`, *default:* `nil`) - The last date at which the feed was uploaded.
  *   `processingStatus` (*type:* `String.t`, *default:* `nil`) - The processing status of the feed. Acceptable values are: - "`"`failure`": The feed could not be processed or all items had errors.`" - "`in progress`": The feed is being processed. - "`none`": The feed has not yet been processed. For example, a feed that has never been uploaded will have this processing status. - "`success`": The feed was processed successfully, though some items might have had errors. 
  *   `warnings` (*type:* `list(GoogleApi.Content.V21.Model.DatafeedStatusError.t)`, *default:* `nil`) - The list of errors occurring in the feed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t() | nil,
          :datafeedId => String.t() | nil,
          :errors => list(GoogleApi.Content.V21.Model.DatafeedStatusError.t()) | nil,
          :itemsTotal => String.t() | nil,
          :itemsValid => String.t() | nil,
          :kind => String.t() | nil,
          :language => String.t() | nil,
          :lastUploadDate => String.t() | nil,
          :processingStatus => String.t() | nil,
          :warnings => list(GoogleApi.Content.V21.Model.DatafeedStatusError.t()) | nil
        }

  field(:country)
  field(:datafeedId)
  field(:errors, as: GoogleApi.Content.V21.Model.DatafeedStatusError, type: :list)
  field(:itemsTotal)
  field(:itemsValid)
  field(:kind)
  field(:language)
  field(:lastUploadDate)
  field(:processingStatus)
  field(:warnings, as: GoogleApi.Content.V21.Model.DatafeedStatusError, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.DatafeedStatus do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.DatafeedStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.DatafeedStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
