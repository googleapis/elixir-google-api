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

defmodule GoogleApi.Compute.V1.Model.NotificationEndpoint do
  @moduledoc """
  Represents a notification endpoint.

  A notification endpoint resource defines an endpoint to receive notifications when there are status changes detected by the associated health check service.

  For more information, see  Health checks overview. (== resource_for {$api_version}.notificationEndpoint ==) (== resource_for {$api_version}.regionNotificationEndpoints ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `grpcSettings` (*type:* `GoogleApi.Compute.V1.Model.NotificationEndpointGrpcSettings.t`, *default:* `nil`) - Settings of the gRPC notification endpoint including the endpoint URL and the retry duration.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] A unique identifier for this resource type. The server generates this identifier.
  *   `kind` (*type:* `String.t`, *default:* `compute#notificationEndpoint`) - [Output Only] Type of the resource. Always compute#notificationEndpoint for notification endpoints.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the notification endpoint resides. This field applies only to the regional resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :grpcSettings => GoogleApi.Compute.V1.Model.NotificationEndpointGrpcSettings.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :region => String.t(),
          :selfLink => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:grpcSettings, as: GoogleApi.Compute.V1.Model.NotificationEndpointGrpcSettings)
  field(:id)
  field(:kind)
  field(:name)
  field(:region)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NotificationEndpoint do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NotificationEndpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NotificationEndpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
