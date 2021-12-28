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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting do
  @moduledoc """
  Represents targeting information about video.

  ## Attributes

  *   `excludedPositionTypes` (*type:* `list(String.t)`, *default:* `nil`) - A list of video positions to be excluded. When this field is populated, the targeted_position_types field must be empty.
  *   `targetedPositionTypes` (*type:* `list(String.t)`, *default:* `nil`) - A list of video positions to be included. When this field is populated, the excluded_position_types field must be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedPositionTypes => list(String.t()) | nil,
          :targetedPositionTypes => list(String.t()) | nil
        }

  field(:excludedPositionTypes, type: :list)
  field(:targetedPositionTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
