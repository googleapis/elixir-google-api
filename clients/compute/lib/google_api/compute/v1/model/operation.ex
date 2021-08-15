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

defmodule GoogleApi.Compute.V1.Model.Operation do
  @moduledoc """
  Represents an Operation resource. Google Compute Engine has three Operation resources: * [Global](/compute/docs/reference/rest/v1/globalOperations) * [Regional](/compute/docs/reference/rest/v1/regionOperations) * [Zonal](/compute/docs/reference/rest/v1/zoneOperations) You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the `globalOperations` resource. - For regional operations, use the `regionOperations` resource. - For zonal operations, use the `zonalOperations` resource. For more information, read Global, Regional, and Zonal Resources.

  ## Attributes

  *   `clientOperationId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The value of `requestId` if you provided it in the request. Not present otherwise.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Deprecated] This field is deprecated.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output Only] A textual description of the operation, which is set when the operation is created.
  *   `endTime` (*type:* `String.t`, *default:* `nil`) - [Output Only] The time that this operation was completed. This value is in RFC3339 text format.
  *   `error` (*type:* `GoogleApi.Compute.V1.Model.OperationError.t`, *default:* `nil`) - [Output Only] If errors are generated during processing of the operation, this field will be populated.
  *   `httpErrorMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] If the operation fails, this field contains the HTTP error message that was returned, such as `NOT FOUND`.
  *   `httpErrorStatusCode` (*type:* `integer()`, *default:* `nil`) - [Output Only] If the operation fails, this field contains the HTTP error status code that was returned. For example, a `404` means the resource was not found.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the operation. This identifier is defined by the server.
  *   `insertTime` (*type:* `String.t`, *default:* `nil`) - [Output Only] The time that this operation was requested. This value is in RFC3339 text format.
  *   `kind` (*type:* `String.t`, *default:* `compute#operation`) - [Output Only] Type of the resource. Always `compute#operation` for Operation resources.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the operation.
  *   `operationGroupId` (*type:* `String.t`, *default:* `nil`) - [Output Only] An ID that represents a group of operations, such as when a group of operations results from a `bulkInsert` API request.
  *   `operationType` (*type:* `String.t`, *default:* `nil`) - [Output Only] The type of operation, such as `insert`, `update`, or `delete`, and so on.
  *   `progress` (*type:* `integer()`, *default:* `nil`) - [Output Only] An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the region where the operation resides. Only applicable when performing regional operations.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - [Output Only] The time that this operation was started by the server. This value is in RFC3339 text format.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the operation, which can be one of the following: `PENDING`, `RUNNING`, or `DONE`.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional textual description of the current status of the operation.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique target ID, which identifies a specific incarnation of the target resource.
  *   `targetLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.
  *   `user` (*type:* `String.t`, *default:* `nil`) - [Output Only] User who requested the operation, for example: `user@example.com`.
  *   `warnings` (*type:* `list(GoogleApi.Compute.V1.Model.OperationWarnings.t)`, *default:* `nil`) - [Output Only] If warning messages are generated during processing of the operation, this field will be populated.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the zone where the operation resides. Only applicable when performing per-zone operations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientOperationId => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :endTime => String.t() | nil,
          :error => GoogleApi.Compute.V1.Model.OperationError.t() | nil,
          :httpErrorMessage => String.t() | nil,
          :httpErrorStatusCode => integer() | nil,
          :id => String.t() | nil,
          :insertTime => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :operationGroupId => String.t() | nil,
          :operationType => String.t() | nil,
          :progress => integer() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :startTime => String.t() | nil,
          :status => String.t() | nil,
          :statusMessage => String.t() | nil,
          :targetId => String.t() | nil,
          :targetLink => String.t() | nil,
          :user => String.t() | nil,
          :warnings => list(GoogleApi.Compute.V1.Model.OperationWarnings.t()) | nil,
          :zone => String.t() | nil
        }

  field(:clientOperationId)
  field(:creationTimestamp)
  field(:description)
  field(:endTime)
  field(:error, as: GoogleApi.Compute.V1.Model.OperationError)
  field(:httpErrorMessage)
  field(:httpErrorStatusCode)
  field(:id)
  field(:insertTime)
  field(:kind)
  field(:name)
  field(:operationGroupId)
  field(:operationType)
  field(:progress)
  field(:region)
  field(:selfLink)
  field(:startTime)
  field(:status)
  field(:statusMessage)
  field(:targetId)
  field(:targetLink)
  field(:user)
  field(:warnings, as: GoogleApi.Compute.V1.Model.OperationWarnings, type: :list)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
