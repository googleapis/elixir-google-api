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

defmodule GoogleApi.OnDemandScanning.V1.Model.ComplianceOccurrence do
  @moduledoc """
  An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.

  ## Attributes

  *   `nonComplianceReason` (*type:* `String.t`, *default:* `nil`) - 
  *   `nonCompliantFiles` (*type:* `list(GoogleApi.OnDemandScanning.V1.Model.NonCompliantFile.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nonComplianceReason => String.t() | nil,
          :nonCompliantFiles =>
            list(GoogleApi.OnDemandScanning.V1.Model.NonCompliantFile.t()) | nil
        }

  field(:nonComplianceReason)
  field(:nonCompliantFiles, as: GoogleApi.OnDemandScanning.V1.Model.NonCompliantFile, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.ComplianceOccurrence do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.ComplianceOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.ComplianceOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
