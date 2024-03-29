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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageIssue do
  @moduledoc """
  This message wraps a location affected by a vulnerability and its associated fix (if one is available).

  ## Attributes

  *   `affectedLocation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation.t`, *default:* `nil`) - The location of the vulnerability.
  *   `effectiveSeverity` (*type:* `String.t`, *default:* `nil`) - Output only. The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when distro or language system has not yet assigned a severity for this vulnerability.
  *   `fixedLocation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation.t`, *default:* `nil`) - The location of the available fix for vulnerability.
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - The type of package (e.g. OS, MAVEN, GO).
  *   `severityName` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affectedLocation =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation.t() | nil,
          :effectiveSeverity => String.t() | nil,
          :fixedLocation =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation.t() | nil,
          :packageType => String.t() | nil,
          :severityName => String.t() | nil
        }

  field(:affectedLocation, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation)
  field(:effectiveSeverity)
  field(:fixedLocation, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation)
  field(:packageType)
  field(:severityName)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageIssue do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageIssue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageIssue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
