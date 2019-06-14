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

defmodule GoogleApi.ServiceManagement.V1.Model.MonitoringDestination do
  @moduledoc """
  Configuration of a specific monitoring destination (the producer project
  or the consumer project).

  ## Attributes

  - metrics (list(String.t)): Types of the metrics to report to this monitoring destination.
  Each type must be defined in Service.metrics section. Defaults to `nil`.
  - monitoredResource (String.t): The monitored resource type. The type must be defined in
  Service.monitored_resources section. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metrics => list(String.t()),
          :monitoredResource => String.t()
        }

  field(:metrics, type: :list)
  field(:monitoredResource)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.MonitoringDestination do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.MonitoringDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.MonitoringDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
