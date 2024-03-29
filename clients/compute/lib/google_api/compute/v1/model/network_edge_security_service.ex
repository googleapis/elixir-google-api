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

defmodule GoogleApi.Compute.V1.Model.NetworkEdgeSecurityService do
  @moduledoc """
  Represents a Google Cloud Armor network edge security service resource.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService. An up-to-date fingerprint must be provided in order to update the NetworkEdgeSecurityService, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a NetworkEdgeSecurityService.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#networkEdgeSecurityService`) - [Output only] Type of the resource. Always compute#networkEdgeSecurityService for NetworkEdgeSecurityServices
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the resource resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `securityPolicy` (*type:* `String.t`, *default:* `nil`) - The resource URL for the network edge security service associated with this network edge security service.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `selfLinkWithId` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource with the resource id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :region => String.t() | nil,
          :securityPolicy => String.t() | nil,
          :selfLink => String.t() | nil,
          :selfLinkWithId => String.t() | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:name)
  field(:region)
  field(:securityPolicy)
  field(:selfLink)
  field(:selfLinkWithId)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkEdgeSecurityService do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkEdgeSecurityService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkEdgeSecurityService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
