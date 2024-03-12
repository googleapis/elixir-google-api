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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Assessment do
  @moduledoc """
  Assessment provides all information that is related to a single vulnerability for this product.

  ## Attributes

  *   `cve` (*type:* `String.t`, *default:* `nil`) - Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  *   `impacts` (*type:* `list(String.t)`, *default:* `nil`) - Contains information about the impact of this vulnerability, this will change with time.
  *   `justification` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Justification.t`, *default:* `nil`) - Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  *   `longDescription` (*type:* `String.t`, *default:* `nil`) - A detailed description of this Vex.
  *   `relatedUris` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.URI.t)`, *default:* `nil`) - Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  *   `remediations` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Remediation.t)`, *default:* `nil`) - Specifies details on how to handle (and presumably, fix) a vulnerability.
  *   `shortDescription` (*type:* `String.t`, *default:* `nil`) - A one sentence description of this Vex.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Provides the state of this Vulnerability assessment.
  *   `vulnerabilityId` (*type:* `String.t`, *default:* `nil`) - The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cve => String.t() | nil,
          :impacts => list(String.t()) | nil,
          :justification => GoogleApi.ContainerAnalysis.V1alpha1.Model.Justification.t() | nil,
          :longDescription => String.t() | nil,
          :relatedUris => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.URI.t()) | nil,
          :remediations => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Remediation.t()) | nil,
          :shortDescription => String.t() | nil,
          :state => String.t() | nil,
          :vulnerabilityId => String.t() | nil
        }

  field(:cve)
  field(:impacts, type: :list)
  field(:justification, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Justification)
  field(:longDescription)
  field(:relatedUris, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.URI, type: :list)
  field(:remediations, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Remediation, type: :list)
  field(:shortDescription)
  field(:state)
  field(:vulnerabilityId)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Assessment do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Assessment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Assessment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
