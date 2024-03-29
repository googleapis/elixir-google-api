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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo do
  @moduledoc """
  Contains information about a specific Anthos on VMware version.

  ## Attributes

  *   `dependencies` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.UpgradeDependency.t)`, *default:* `nil`) - The list of upgrade dependencies for this version.
  *   `hasDependencies` (*type:* `boolean()`, *default:* `nil`) - If set, the cluster dependencies (e.g. the admin cluster, other user clusters managed by the same admin cluster) must be upgraded before this version can be installed or upgraded to.
  *   `isInstalled` (*type:* `boolean()`, *default:* `nil`) - If set, the version is installed in the admin cluster. Otherwise, the version bundle must be downloaded and installed before a user cluster can be created at or upgraded to this version.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version number e.g. 1.13.1-gke.1000.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dependencies => list(GoogleApi.GKEOnPrem.V1.Model.UpgradeDependency.t()) | nil,
          :hasDependencies => boolean() | nil,
          :isInstalled => boolean() | nil,
          :version => String.t() | nil
        }

  field(:dependencies, as: GoogleApi.GKEOnPrem.V1.Model.UpgradeDependency, type: :list)
  field(:hasDependencies)
  field(:isInstalled)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareVersionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
