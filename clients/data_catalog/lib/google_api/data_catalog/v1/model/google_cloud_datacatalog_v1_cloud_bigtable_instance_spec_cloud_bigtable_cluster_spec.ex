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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec do
  @moduledoc """
  Spec that applies to clusters of an Instance of Cloud Bigtable.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of the cluster.
  *   `linkedResource` (*type:* `String.t`, *default:* `nil`) - A link back to the parent resource, in this case Instance.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Location of the cluster, typically a Cloud zone.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the resource. For a cluster this would be "CLUSTER".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :linkedResource => String.t() | nil,
          :location => String.t() | nil,
          :type => String.t() | nil
        }

  field(:displayName)
  field(:linkedResource)
  field(:location)
  field(:type)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
