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

defmodule GoogleApi.ServiceControl.V1.Model.AuditLog do
  @moduledoc """
  Common audit log format for Google Cloud Platform API operations. 

  ## Attributes

  *   `authenticationInfo` (*type:* `GoogleApi.ServiceControl.V1.Model.AuthenticationInfo.t`, *default:* `nil`) - Authentication information.
  *   `authorizationInfo` (*type:* `list(GoogleApi.ServiceControl.V1.Model.AuthorizationInfo.t)`, *default:* `nil`) - Authorization information. If there are multiple resources or permissions involved, then there is one AuthorizationInfo element for each {resource, permission} tuple.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Other service-specific data about the request, response, and other information associated with the current audited event.
  *   `methodName` (*type:* `String.t`, *default:* `nil`) - The name of the service method or operation. For API calls, this should be the name of the API method. For example, "google.cloud.bigquery.v2.TableService.InsertTable" "google.logging.v2.ConfigServiceV2.CreateSink"
  *   `numResponseItems` (*type:* `String.t`, *default:* `nil`) - The number of items returned from a List or Query API method, if applicable.
  *   `policyViolationInfo` (*type:* `GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo.t`, *default:* `nil`) - Indicates the policy violations for this request. If the request is denied by the policy, violation information will be logged here.
  *   `request` (*type:* `map()`, *default:* `nil`) - The operation request. This may not include all request parameters, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.
  *   `requestMetadata` (*type:* `GoogleApi.ServiceControl.V1.Model.RequestMetadata.t`, *default:* `nil`) - Metadata about the operation.
  *   `resourceLocation` (*type:* `GoogleApi.ServiceControl.V1.Model.ResourceLocation.t`, *default:* `nil`) - The resource location information.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - The resource or collection that is the target of the operation. The name is a scheme-less URI, not including the API service name. For example: "projects/PROJECT_ID/zones/us-central1-a/instances" "projects/PROJECT_ID/datasets/DATASET_ID"
  *   `resourceOriginalState` (*type:* `map()`, *default:* `nil`) - The resource's original state before mutation. Present only for operations which have successfully modified the targeted resource(s). In general, this field should contain all changed fields, except those that are already been included in `request`, `response`, `metadata` or `service_data` fields. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.
  *   `response` (*type:* `map()`, *default:* `nil`) - The operation response. This may not include all response elements, such as those that are too large, privacy-sensitive, or duplicated elsewhere in the log record. It should never include user-generated data, such as file contents. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.
  *   `serviceData` (*type:* `map()`, *default:* `nil`) - Deprecated. Use the `metadata` field instead. Other service-specific data about the request, response, and other activities.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - The name of the API service performing the operation. For example, `"compute.googleapis.com"`.
  *   `status` (*type:* `GoogleApi.ServiceControl.V1.Model.Status.t`, *default:* `nil`) - The status of the overall operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authenticationInfo => GoogleApi.ServiceControl.V1.Model.AuthenticationInfo.t() | nil,
          :authorizationInfo =>
            list(GoogleApi.ServiceControl.V1.Model.AuthorizationInfo.t()) | nil,
          :metadata => map() | nil,
          :methodName => String.t() | nil,
          :numResponseItems => String.t() | nil,
          :policyViolationInfo => GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo.t() | nil,
          :request => map() | nil,
          :requestMetadata => GoogleApi.ServiceControl.V1.Model.RequestMetadata.t() | nil,
          :resourceLocation => GoogleApi.ServiceControl.V1.Model.ResourceLocation.t() | nil,
          :resourceName => String.t() | nil,
          :resourceOriginalState => map() | nil,
          :response => map() | nil,
          :serviceData => map() | nil,
          :serviceName => String.t() | nil,
          :status => GoogleApi.ServiceControl.V1.Model.Status.t() | nil
        }

  field(:authenticationInfo, as: GoogleApi.ServiceControl.V1.Model.AuthenticationInfo)
  field(:authorizationInfo, as: GoogleApi.ServiceControl.V1.Model.AuthorizationInfo, type: :list)
  field(:metadata, type: :map)
  field(:methodName)
  field(:numResponseItems)
  field(:policyViolationInfo, as: GoogleApi.ServiceControl.V1.Model.PolicyViolationInfo)
  field(:request, type: :map)
  field(:requestMetadata, as: GoogleApi.ServiceControl.V1.Model.RequestMetadata)
  field(:resourceLocation, as: GoogleApi.ServiceControl.V1.Model.ResourceLocation)
  field(:resourceName)
  field(:resourceOriginalState, type: :map)
  field(:response, type: :map)
  field(:serviceData, type: :map)
  field(:serviceName)
  field(:status, as: GoogleApi.ServiceControl.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.AuditLog do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.AuditLog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.AuditLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
