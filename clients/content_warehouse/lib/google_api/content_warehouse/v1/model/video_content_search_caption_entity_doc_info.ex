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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityDocInfo do
  @moduledoc """
  Contains information about document appearances of an entity.

  ## Attributes

  *   `entityDocCount` (*type:* `String.t`, *default:* `nil`) - The number of documents where this entity was mentioned at least once.
  *   `entityMentionCount` (*type:* `String.t`, *default:* `nil`) - The number of times the entity was mentioned across the entire corpus.
  *   `mid` (*type:* `String.t`, *default:* `nil`) - The entity id.
  *   `totalDocCount` (*type:* `String.t`, *default:* `nil`) - The number of documents in the corpus.
  *   `totalMentionCount` (*type:* `String.t`, *default:* `nil`) - The number of mentions of any entity across the entire corpus.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityDocCount => String.t() | nil,
          :entityMentionCount => String.t() | nil,
          :mid => String.t() | nil,
          :totalDocCount => String.t() | nil,
          :totalMentionCount => String.t() | nil
        }

  field(:entityDocCount)
  field(:entityMentionCount)
  field(:mid)
  field(:totalDocCount)
  field(:totalMentionCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityDocInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityDocInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityDocInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
