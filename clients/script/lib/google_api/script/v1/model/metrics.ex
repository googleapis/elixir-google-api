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

defmodule GoogleApi.Script.V1.Model.Metrics do
  @moduledoc """
  Resource containing usage stats for a given script, based on the supplied
  filter and mask present in the request.

  ## Attributes

  - activeUsers (list(GoogleApi.Script.V1.Model.MetricsValue.t)): Number of active users. Defaults to `nil`.
  - failedExecutions (list(GoogleApi.Script.V1.Model.MetricsValue.t)): Number of failed executions. Defaults to `nil`.
  - totalExecutions (list(GoogleApi.Script.V1.Model.MetricsValue.t)): Number of total executions. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeUsers => list(GoogleApi.Script.V1.Model.MetricsValue.t()),
          :failedExecutions => list(GoogleApi.Script.V1.Model.MetricsValue.t()),
          :totalExecutions => list(GoogleApi.Script.V1.Model.MetricsValue.t())
        }

  field(:activeUsers, as: GoogleApi.Script.V1.Model.MetricsValue, type: :list)
  field(:failedExecutions, as: GoogleApi.Script.V1.Model.MetricsValue, type: :list)
  field(:totalExecutions, as: GoogleApi.Script.V1.Model.MetricsValue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Metrics do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Metrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Metrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
