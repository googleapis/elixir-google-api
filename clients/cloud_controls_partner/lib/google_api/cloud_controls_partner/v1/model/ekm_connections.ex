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

defmodule GoogleApi.CloudControlsPartner.V1.Model.EkmConnections do
  @moduledoc """
  The EKM connections associated with a workload

  ## Attributes

  *   `ekmConnections` (*type:* `list(GoogleApi.CloudControlsPartner.V1.Model.EkmConnection.t)`, *default:* `nil`) - The EKM connections associated with the workload
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/ekmConnections`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ekmConnections =>
            list(GoogleApi.CloudControlsPartner.V1.Model.EkmConnection.t()) | nil,
          :name => String.t() | nil
        }

  field(:ekmConnections, as: GoogleApi.CloudControlsPartner.V1.Model.EkmConnection, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.EkmConnections do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.EkmConnections.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.EkmConnections do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
