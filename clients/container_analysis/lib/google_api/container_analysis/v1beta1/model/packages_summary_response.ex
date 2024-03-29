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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.PackagesSummaryResponse do
  @moduledoc """
  A summary of the packages found within the given resource.

  ## Attributes

  *   `licensesSummary` (*type:* `list(GoogleApi.ContainerAnalysis.V1beta1.Model.LicensesSummary.t)`, *default:* `nil`) - A listing by license name of each of the licenses and their counts.
  *   `resourceUrl` (*type:* `String.t`, *default:* `nil`) - The unique URL of the image or the container for which this summary applies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :licensesSummary =>
            list(GoogleApi.ContainerAnalysis.V1beta1.Model.LicensesSummary.t()) | nil,
          :resourceUrl => String.t() | nil
        }

  field(:licensesSummary,
    as: GoogleApi.ContainerAnalysis.V1beta1.Model.LicensesSummary,
    type: :list
  )

  field(:resourceUrl)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.PackagesSummaryResponse do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.PackagesSummaryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.PackagesSummaryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
