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

defmodule GoogleApi.ServiceManagement.V1.Model.ManagedService do
  @moduledoc """
  The full representation of a Service that is managed by
  Google Service Management.

  ## Attributes

  - producerProjectId (String.t): ID of the project that produces and owns this service. Defaults to `nil`.
  - serviceName (String.t): The name of the service. See the [overview](/service-management/overview)
  for naming requirements. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :producerProjectId => String.t(),
          :serviceName => String.t()
        }

  field(:producerProjectId)
  field(:serviceName)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.ManagedService do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.ManagedService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.ManagedService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
