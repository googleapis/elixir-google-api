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

defmodule GoogleApi.Run.V1.Model.DomainMapping do
  @moduledoc """
  Resource to hold the state and status of a user's domain mapping.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "domains.cloudrun.com/v1".
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource, in this case "DomainMapping".
  *   `metadata` (*type:* `GoogleApi.Run.V1.Model.ObjectMeta.t`, *default:* `nil`) - Metadata associated with this BuildTemplate.
  *   `spec` (*type:* `GoogleApi.Run.V1.Model.DomainMappingSpec.t`, *default:* `nil`) - The spec for this DomainMapping.
  *   `status` (*type:* `GoogleApi.Run.V1.Model.DomainMappingStatus.t`, *default:* `nil`) - The current status of the DomainMapping.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :kind => String.t(),
          :metadata => GoogleApi.Run.V1.Model.ObjectMeta.t(),
          :spec => GoogleApi.Run.V1.Model.DomainMappingSpec.t(),
          :status => GoogleApi.Run.V1.Model.DomainMappingStatus.t()
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.Run.V1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.Run.V1.Model.DomainMappingSpec)
  field(:status, as: GoogleApi.Run.V1.Model.DomainMappingStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.DomainMapping do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.DomainMapping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.DomainMapping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
