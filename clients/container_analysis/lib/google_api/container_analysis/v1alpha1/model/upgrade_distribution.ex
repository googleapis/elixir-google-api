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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution do
  @moduledoc """
  The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.

  ## Attributes

  *   `classification` (*type:* `String.t`, *default:* `nil`) - The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed.
  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.
  *   `cve` (*type:* `list(String.t)`, *default:* `nil`) - The cve that would be resolved by this upgrade.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity as specified by the upstream operating system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classification => String.t(),
          :cpeUri => String.t(),
          :cve => list(String.t()),
          :severity => String.t()
        }

  field(:classification)
  field(:cpeUri)
  field(:cve, type: :list)
  field(:severity)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
