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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageInfoOccurrence do
  @moduledoc """
  PackageInfoOccurrence represents an SPDX Package Information section: https://spdx.github.io/spdx-spec/3-package-information/

  ## Attributes

  *   `comment` (*type:* `String.t`, *default:* `nil`) - A place for the SPDX file creator to record any general comments about the package being described
  *   `filename` (*type:* `String.t`, *default:* `nil`) - Provide the actual file name of the package, or path of the directory being treated as a package
  *   `homePage` (*type:* `String.t`, *default:* `nil`) - Output only. Provide a place for the SPDX file creator to record a web site that serves as the package's home page
  *   `id` (*type:* `String.t`, *default:* `nil`) - Uniquely identify any element in an SPDX document which may be referenced by other elements
  *   `licenseConcluded` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.License.t`, *default:* `nil`) - package or alternative values, if the governing license cannot be determined
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  *   `sourceInfo` (*type:* `String.t`, *default:* `nil`) - Provide a place for the SPDX file creator to record any relevant background information or additional comments about the origin of the package
  *   `summaryDescription` (*type:* `String.t`, *default:* `nil`) - Output only. A short description of the package
  *   `title` (*type:* `String.t`, *default:* `nil`) - Output only. Identify the full name of the package as given by the Package Originator
  *   `version` (*type:* `String.t`, *default:* `nil`) - Output only. Identify the version of the package
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comment => String.t() | nil,
          :filename => String.t() | nil,
          :homePage => String.t() | nil,
          :id => String.t() | nil,
          :licenseConcluded => GoogleApi.ContainerAnalysis.V1alpha1.Model.License.t() | nil,
          :packageType => String.t() | nil,
          :sourceInfo => String.t() | nil,
          :summaryDescription => String.t() | nil,
          :title => String.t() | nil,
          :version => String.t() | nil
        }

  field(:comment)
  field(:filename)
  field(:homePage)
  field(:id)
  field(:licenseConcluded, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.License)
  field(:packageType)
  field(:sourceInfo)
  field(:summaryDescription)
  field(:title)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageInfoOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageInfoOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.PackageInfoOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
