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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccSignal do
  @moduledoc """


  ## Attributes

  *   `clicksBad` (*type:* `float()`, *default:* `nil`) - 
  *   `clicksImage` (*type:* `float()`, *default:* `nil`) - 
  *   `clicksTotal` (*type:* `float()`, *default:* `nil`) - 
  *   `debugInfo` (*type:* `list(String.t)`, *default:* `nil`) - For debugging purpose only.
  *   `numImageUrls` (*type:* `float()`, *default:* `nil`) - This represents the number of urls with image clicks. A url can have both image and non-image clicks, in which case we set num_image_urls to be the ratio of image_clicks vs total clicks. For example, if a url has 10 total clicks and 7 image clicks, num_image_urls will be set to 0.7.
  *   `numUrls` (*type:* `String.t`, *default:* `nil`) - 
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - For debugging purpose only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clicksBad => float() | nil,
          :clicksImage => float() | nil,
          :clicksTotal => float() | nil,
          :debugInfo => list(String.t()) | nil,
          :numImageUrls => float() | nil,
          :numUrls => String.t() | nil,
          :pattern => String.t() | nil
        }

  field(:clicksBad)
  field(:clicksImage)
  field(:clicksTotal)
  field(:debugInfo, type: :list)
  field(:numImageUrls)
  field(:numUrls)
  field(:pattern)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccSignal do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccSignal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccSignal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end