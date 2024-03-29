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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltVoltPerDocData do
  @moduledoc """
  The protocol buffer stored in the legacyperdocdata muppet attachment for VOLT (go/volt). The data is used for ranking changes. Only CWV signals and secure signal are stored. MobileFriendliness is stored separately in the legacyperdocdata. Safe browsing and BAS/AER conditions are not used for ranking.

  ## Attributes

  *   `desktopCwv` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltCoreWebVitals.t`, *default:* `nil`) - Desktop Core Wev Vital metrics. NOTE(yunchengz): This field will not be populated in Muppet.
  *   `desktopDisplayUrlIsHttps` (*type:* `boolean()`, *default:* `nil`) - 
  *   `displayUrlIsHttps` (*type:* `boolean()`, *default:* `nil`) - 
  *   `mobileCwv` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltCoreWebVitals.t`, *default:* `nil`) - Mobile Core Web Vital metrics. NOTE(yunchengz): This field will not be populated in Muppet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desktopCwv =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltCoreWebVitals.t() | nil,
          :desktopDisplayUrlIsHttps => boolean() | nil,
          :displayUrlIsHttps => boolean() | nil,
          :mobileCwv =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltCoreWebVitals.t() | nil
        }

  field(:desktopCwv, as: GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltCoreWebVitals)
  field(:desktopDisplayUrlIsHttps)
  field(:displayUrlIsHttps)
  field(:mobileCwv, as: GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltCoreWebVitals)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltVoltPerDocData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltVoltPerDocData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingMobileVoltVoltPerDocData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
