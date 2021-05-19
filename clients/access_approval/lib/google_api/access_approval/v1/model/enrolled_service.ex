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

defmodule GoogleApi.AccessApproval.V1.Model.EnrolledService do
  @moduledoc """
  Represents the enrollment of a cloud resource into a specific service.

  ## Attributes

  *   `cloudProduct` (*type:* `String.t`, *default:* `nil`) - The product for which Access Approval will be enrolled. Allowed values are listed below (case-sensitive): * all * App Engine * BigQuery * Cloud Bigtable * Cloud Key Management Service * Compute Engine * Cloud Dataflow * Cloud Identity and Access Management * Cloud Logging * Cloud Pub/Sub * Cloud Spanner * Cloud SQL * Cloud Storage * Google Kubernetes Engine * Persistent Disk Note: These values are supported as input for legacy purposes, but will not be returned from the API. * all * appengine.googleapis.com * bigquery.googleapis.com * bigtable.googleapis.com * container.googleapis.com * cloudkms.googleapis.com * cloudsql.googleapis.com * compute.googleapis.com * dataflow.googleapis.com * iam.googleapis.com * logging.googleapis.com * pubsub.googleapis.com * spanner.googleapis.com * storage.googleapis.com Calls to UpdateAccessApprovalSettings using 'all' or any of the XXX.googleapis.com will be translated to the associated product name ('all', 'App Engine', etc.). Note: 'all' will enroll the resource in all products supported at both 'GA' and 'Preview' levels. More information about levels of support is available at https://cloud.google.com/access-approval/docs/supported-services
  *   `enrollmentLevel` (*type:* `String.t`, *default:* `nil`) - The enrollment level of the service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudProduct => String.t() | nil,
          :enrollmentLevel => String.t() | nil
        }

  field(:cloudProduct)
  field(:enrollmentLevel)
end

defimpl Poison.Decoder, for: GoogleApi.AccessApproval.V1.Model.EnrolledService do
  def decode(value, options) do
    GoogleApi.AccessApproval.V1.Model.EnrolledService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessApproval.V1.Model.EnrolledService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
