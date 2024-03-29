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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityCalypsoAppsUniversalAuLiveOpFormat do
  @moduledoc """
  Contains the format information for a single LiveOp/LiveEvent. Next ID: 11

  ## Attributes

  *   `deeplink` (*type:* `String.t`, *default:* `nil`) - 
  *   `description` (*type:* `String.t`, *default:* `nil`) - 
  *   `eyebrow` (*type:* `String.t`, *default:* `nil`) - iOS only, kind of event type
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `originalImageUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `squareImageUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `status` (*type:* `String.t`, *default:* `nil`) - iOS only, sort of start schedule
  *   `title` (*type:* `String.t`, *default:* `nil`) - 
  *   `videoId` (*type:* `String.t`, *default:* `nil`) - 
  *   `videoUrl` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deeplink => String.t() | nil,
          :description => String.t() | nil,
          :eyebrow => String.t() | nil,
          :imageUrl => String.t() | nil,
          :originalImageUrl => String.t() | nil,
          :squareImageUrl => String.t() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :videoId => String.t() | nil,
          :videoUrl => String.t() | nil
        }

  field(:deeplink)
  field(:description)
  field(:eyebrow)
  field(:imageUrl)
  field(:originalImageUrl)
  field(:squareImageUrl)
  field(:status)
  field(:title)
  field(:videoId)
  field(:videoUrl)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityCalypsoAppsUniversalAuLiveOpFormat do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityCalypsoAppsUniversalAuLiveOpFormat.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityCalypsoAppsUniversalAuLiveOpFormat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
