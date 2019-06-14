# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudRun.V1alpha1.Model.DomainMappingStatus do
  @moduledoc """
  The current state of the Domain Mapping.

  ## Attributes

  - conditions (list(GoogleApi.CloudRun.V1alpha1.Model.DomainMappingCondition.t)): Array of observed DomainMappingConditions, indicating the current state
  of the DomainMapping. Defaults to `nil`.
  - mappedRouteName (String.t): The name of the route that the mapping currently points to. Defaults to `nil`.
  - observedGeneration (integer()): ObservedGeneration is the 'Generation' of the DomainMapping that
  was last processed by the controller.

  Clients polling for completed reconciliation should poll until
  observedGeneration = metadata.generation and the Ready condition's status
  is True or False. Defaults to `nil`.
  - resourceRecords (list(GoogleApi.CloudRun.V1alpha1.Model.ResourceRecord.t)): The resource records required to configure this domain mapping. These
  records must be added to the domain's DNS configuration in order to
  serve the application via this domain mapping. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions => list(GoogleApi.CloudRun.V1alpha1.Model.DomainMappingCondition.t()),
          :mappedRouteName => String.t(),
          :observedGeneration => integer(),
          :resourceRecords => list(GoogleApi.CloudRun.V1alpha1.Model.ResourceRecord.t())
        }

  field(:conditions, as: GoogleApi.CloudRun.V1alpha1.Model.DomainMappingCondition, type: :list)
  field(:mappedRouteName)
  field(:observedGeneration)
  field(:resourceRecords, as: GoogleApi.CloudRun.V1alpha1.Model.ResourceRecord, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.DomainMappingStatus do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.DomainMappingStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.DomainMappingStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
