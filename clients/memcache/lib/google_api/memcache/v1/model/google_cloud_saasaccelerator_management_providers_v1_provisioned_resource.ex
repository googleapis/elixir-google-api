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

defmodule GoogleApi.Memcache.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource do
  @moduledoc """
  Describes provisioned dataplane resources.

  ## Attributes

  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provider's VM). For GCP compute resources use singular form of the names listed in GCP compute API documentation (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with 'compute-', for example: 'compute-instance', 'compute-disk', 'compute-autoscaler'.
  *   `resourceUrl` (*type:* `String.t`, *default:* `nil`) - URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/projects/...)".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourceType => String.t() | nil,
          :resourceUrl => String.t() | nil
        }

  field(:resourceType)
  field(:resourceUrl)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Memcache.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource do
  def decode(value, options) do
    GoogleApi.Memcache.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Memcache.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
