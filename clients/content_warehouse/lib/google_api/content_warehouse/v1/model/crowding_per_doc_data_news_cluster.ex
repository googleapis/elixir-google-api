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

defmodule GoogleApi.ContentWarehouse.V1.Model.CrowdingPerDocDataNewsCluster do
  @moduledoc """
  For crowding in news we need to keep data about the last X clustering iterations around.

  ## Attributes

  *   `ClusterId` (*type:* `String.t`, *default:* `nil`) - Fingerprint combination of all urls in a cluster
  *   `ClusterSize` (*type:* `integer()`, *default:* `nil`) - This is the X in the "and X related >>" link on headlines and search results
  *   `ClusterTimeStamp` (*type:* `integer()`, *default:* `nil`) - When was this clustered (needed for keeping last X iterations around and discarding earlier ones)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ClusterId => String.t() | nil,
          :ClusterSize => integer() | nil,
          :ClusterTimeStamp => integer() | nil
        }

  field(:ClusterId)
  field(:ClusterSize)
  field(:ClusterTimeStamp)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CrowdingPerDocDataNewsCluster do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CrowdingPerDocDataNewsCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CrowdingPerDocDataNewsCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
