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

defmodule GoogleApi.DisplayVideo.V3.Model.BulkEditNegativeKeywordsRequest do
  @moduledoc """
  Request message for NegativeKeywordService.BulkEditNegativeKeywords.

  ## Attributes

  *   `createdNegativeKeywords` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.NegativeKeyword.t)`, *default:* `nil`) - The negative keywords to create in batch, specified as a list of NegativeKeywords.
  *   `deletedNegativeKeywords` (*type:* `list(String.t)`, *default:* `nil`) - The negative keywords to delete in batch, specified as a list of keyword_values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdNegativeKeywords =>
            list(GoogleApi.DisplayVideo.V3.Model.NegativeKeyword.t()) | nil,
          :deletedNegativeKeywords => list(String.t()) | nil
        }

  field(:createdNegativeKeywords, as: GoogleApi.DisplayVideo.V3.Model.NegativeKeyword, type: :list)

  field(:deletedNegativeKeywords, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.BulkEditNegativeKeywordsRequest do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.BulkEditNegativeKeywordsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.BulkEditNegativeKeywordsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
