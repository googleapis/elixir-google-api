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

defmodule GoogleApi.GKEOnPrem.V1.Model.EnrollBareMetalClusterRequest do
  @moduledoc """
  Message for enrolling an existing bare metal cluster to the Anthos On-Prem API.

  ## Attributes

  *   `adminClusterMembership` (*type:* `String.t`, *default:* `nil`) - Required. The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  *   `bareMetalClusterId` (*type:* `String.t`, *default:* `nil`) - User provided OnePlatform identifier that is used as part of the resource name. This must be unique among all bare metal clusters within a project and location and will return a 409 if the cluster already exists. (https://tools.ietf.org/html/rfc1123) format.
  *   `localName` (*type:* `String.t`, *default:* `nil`) - Optional. The object name of the bare metal cluster custom resource on the associated admin cluster. This field is used to support conflicting resource names when enrolling existing clusters to the API. When not provided, this field will resolve to the bare_metal_cluster_id. Otherwise, it must match the object name of the bare metal cluster custom resource. It is not modifiable outside / beyond the enrollment operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminClusterMembership => String.t() | nil,
          :bareMetalClusterId => String.t() | nil,
          :localName => String.t() | nil
        }

  field(:adminClusterMembership)
  field(:bareMetalClusterId)
  field(:localName)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.EnrollBareMetalClusterRequest do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.EnrollBareMetalClusterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.EnrollBareMetalClusterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
