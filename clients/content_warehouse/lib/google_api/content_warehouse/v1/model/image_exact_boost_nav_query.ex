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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageExactBoostNavQuery do
  @moduledoc """
  Navboost query data.

  ## Attributes

  *   `confidence` (*type:* `integer()`, *default:* `nil`) - Associated confidence scores for the image for the query.
  *   `imageClickRank` (*type:* `integer()`, *default:* `nil`) - Click-based rank of the image for this query.
  *   `navFp` (*type:* `String.t`, *default:* `nil`) - Query fingerprint.
  *   `navQuery` (*type:* `String.t`, *default:* `nil`) - The normalized raw query text.
  *   `referrerDocid` (*type:* `list(String.t)`, *default:* `nil`) - List of all referrers, sorted by their rank (stored in Moosedog).
  *   `referrerRank` (*type:* `integer()`, *default:* `nil`) - Rank of the current web doc referrer (stored in docjoins).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => integer() | nil,
          :imageClickRank => integer() | nil,
          :navFp => String.t() | nil,
          :navQuery => String.t() | nil,
          :referrerDocid => list(String.t()) | nil,
          :referrerRank => integer() | nil
        }

  field(:confidence)
  field(:imageClickRank)
  field(:navFp)
  field(:navQuery)
  field(:referrerDocid, type: :list)
  field(:referrerRank)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageExactBoostNavQuery do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageExactBoostNavQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageExactBoostNavQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
