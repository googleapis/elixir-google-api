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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource do
  @moduledoc """
  A resource that is exposed as a result of a finding.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Human readable name of the resource that is exposed.
  *   `methods` (*type:* `list(String.t)`, *default:* `nil`) - The ways in which this resource is exposed. Examples: Read, Write
  *   `name` (*type:* `String.t`, *default:* `nil`) - Exposed Resource Name e.g.: `organizations/123/attackExposureResults/456/exposedResources/789`
  *   `resource` (*type:* `String.t`, *default:* `nil`) - The name of the resource that is exposed. See: https://cloud.google.com/apis/design/resource_names#full_resource_name
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - The resource type of the exposed resource. See: https://cloud.google.com/asset-inventory/docs/supported-asset-types
  *   `resourceValue` (*type:* `String.t`, *default:* `nil`) - How valuable this resource is.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :methods => list(String.t()) | nil,
          :name => String.t() | nil,
          :resource => String.t() | nil,
          :resourceType => String.t() | nil,
          :resourceValue => String.t() | nil
        }

  field(:displayName)
  field(:methods, type: :list)
  field(:name)
  field(:resource)
  field(:resourceType)
  field(:resourceValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExposedResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
