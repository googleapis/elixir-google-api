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

defmodule GoogleApi.HealthCare.V1beta1.Model.QueryAccessibleDataRequest do
  @moduledoc """
  Queries all data_ids that are consented for a given use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. Errors are logged to Cloud Logging (see [Viewing logs] (/healthcare/docs/how-tos/logging) and [QueryAccessibleData] for a sample log entry).

  ## Attributes

  *   `gcsDestination` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentGcsDestination.t`, *default:* `nil`) - The Cloud Storage destination. The Cloud Healthcare API service account must have the `roles/storage.objectAdmin` Cloud IAM role for this Cloud Storage location.
  *   `requestAttributes` (*type:* `map()`, *default:* `nil`) - The values of request attributes associated with this access request.
  *   `resourceAttributes` (*type:* `map()`, *default:* `nil`) - Optional. The values of resource attributes associated with the type of resources being requested. If no values are specified, then all resource types are included in the output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsDestination =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentGcsDestination.t(),
          :requestAttributes => map(),
          :resourceAttributes => map()
        }

  field(:gcsDestination,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentGcsDestination
  )

  field(:requestAttributes, type: :map)
  field(:resourceAttributes, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.QueryAccessibleDataRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.QueryAccessibleDataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.QueryAccessibleDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
