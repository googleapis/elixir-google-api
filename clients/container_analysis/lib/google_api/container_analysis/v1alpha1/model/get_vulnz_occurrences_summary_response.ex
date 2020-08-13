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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.GetVulnzOccurrencesSummaryResponse do
  @moduledoc """
  A summary of how many vulnz occurrences there are per severity type. counts by groups, or if we should have different summary messages like this.

  ## Attributes

  *   `counts` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.SeverityCount.t)`, *default:* `nil`) - A map of how many occurrences were found for each severity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :counts => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.SeverityCount.t())
        }

  field(:counts, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.SeverityCount, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContainerAnalysis.V1alpha1.Model.GetVulnzOccurrencesSummaryResponse do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.GetVulnzOccurrencesSummaryResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContainerAnalysis.V1alpha1.Model.GetVulnzOccurrencesSummaryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
