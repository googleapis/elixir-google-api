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

defmodule GoogleApi.HealthCare.V1beta1.Model.ApplyConsentsRequest do
  @moduledoc """
  Request to apply the Consent resources for the specified FHIR store.

  ## Attributes

  *   `patientScope` (*type:* `GoogleApi.HealthCare.V1beta1.Model.PatientScope.t`, *default:* `nil`) - Optional. Scope down to a list of patients.
  *   `timeRange` (*type:* `GoogleApi.HealthCare.V1beta1.Model.TimeRange.t`, *default:* `nil`) - Optional. Scope down to patients whose most recent consent changes are in the time range. Can only be used with a versioning store (i.e. when disable_resource_versioning is set to false).
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the method only validates Consent resources to make sure they are supported. When the operation completes, ApplyConsentsResponse is returned where `consent_apply_success` and `consent_apply_failure` indicate supported and unsupported (or invalid) Consent resources, respectively. Otherwise, the method propagates the aggregate consensual information to the patient's resources. Upon success, `affected_resources` in the ApplyConsentsResponse indicates the number of resources that may have consensual access changed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :patientScope => GoogleApi.HealthCare.V1beta1.Model.PatientScope.t() | nil,
          :timeRange => GoogleApi.HealthCare.V1beta1.Model.TimeRange.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:patientScope, as: GoogleApi.HealthCare.V1beta1.Model.PatientScope)
  field(:timeRange, as: GoogleApi.HealthCare.V1beta1.Model.TimeRange)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ApplyConsentsRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ApplyConsentsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ApplyConsentsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
