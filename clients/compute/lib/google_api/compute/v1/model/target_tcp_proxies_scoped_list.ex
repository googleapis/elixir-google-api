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

defmodule GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedList do
  @moduledoc """


  ## Attributes

  *   `targetTcpProxies` (*type:* `list(GoogleApi.Compute.V1.Model.TargetTcpProxy.t)`, *default:* `nil`) - A list of TargetTcpProxies contained in this scope.
  *   `warning` (*type:* `GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedListWarning.t`, *default:* `nil`) - Informational warning which replaces the list of backend services when the list is empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetTcpProxies => list(GoogleApi.Compute.V1.Model.TargetTcpProxy.t()) | nil,
          :warning => GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedListWarning.t() | nil
        }

  field(:targetTcpProxies, as: GoogleApi.Compute.V1.Model.TargetTcpProxy, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetTcpProxiesScopedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
