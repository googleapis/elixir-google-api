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

defmodule GoogleApi.GKEOnPrem.V1.Model.QueryVmwareVersionConfigResponse do
  @moduledoc """
  Response message for querying VMware user cluster version config.

  ## Attributes

  *   `versions` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo.t)`, *default:* `nil`) - List of available versions to install or to upgrade to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :versions => list(GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo.t()) | nil
        }

  field(:versions, as: GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.QueryVmwareVersionConfigResponse do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.QueryVmwareVersionConfigResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.QueryVmwareVersionConfigResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
