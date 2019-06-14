# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.CreateTenancyUnitRequest do
  @moduledoc """
  Request to create a tenancy unit for a service consumer of a managed service.

  ## Attributes

  - tenancyUnitId (String.t): Optional service producer-provided identifier of the tenancy unit.
  Must be no longer than 40 characters and preferably URI friendly.
  If it isn't provided, a UID for the tenancy unit is automatically
  generated. The identifier must be unique across a managed service.
  If the tenancy unit already exists for the managed service and service
  consumer pair, calling `CreateTenancyUnit` returns the existing tenancy
  unit if the provided identifier is identical or empty, otherwise the call
  fails. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tenancyUnitId => String.t()
        }

  field(:tenancyUnitId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.CreateTenancyUnitRequest do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.CreateTenancyUnitRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.CreateTenancyUnitRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
