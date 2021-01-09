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

defmodule GoogleApi.ServiceControl.V2.Model.Resource do
  @moduledoc """
  This message defines core attributes for a resource. A resource is an addressable (named) entity provided by the destination service. For example, a file stored on a network storage service.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations is an unstructured key-value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https://kubernetes.io/docs/user-guide/annotations
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created. This may be either the time creation was initiated or when it was completed.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was deleted. If the resource is not deleted, this must be empty.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Mutable. The display name set by clients. Must be <= 63 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. An opaque value that uniquely identifies a version or generation of a resource. It can be used to confirm that the client and server agree on the ordering of a resource being written.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels or tags on the resource, such as AWS resource tags and Kubernetes resource labels.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Immutable. The location of the resource. The location encoding is specific to the service provider, and new encoding may be introduced as the service evolves. For Google Cloud products, the encoding is what is used by Google Cloud APIs, such as `us-east1`, `aws-us-east-1`, and `azure-eastus2`. The semantics of `location` is identical to the `cloud.googleapis.com/location` label used by some Google Cloud APIs.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The stable identifier (name) of a resource on the `service`. A resource can be logically identified as "//{resource.service}/{resource.name}". The differences between a resource name and a URI are: * Resource name is a logical identifier, independent of network protocol and API version. For example, `//pubsub.googleapis.com/projects/123/topics/news-feed`. * URI often includes protocol and version information, so it can be used directly by applications. For example, `https://pubsub.googleapis.com/v1/projects/123/topics/news-feed`. See https://cloud.google.com/apis/design/resource_names for details.
  *   `service` (*type:* `String.t`, *default:* `nil`) - The name of the service that this resource belongs to, such as `pubsub.googleapis.com`. The service may be different from the DNS hostname that actually serves the request.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the resource. The syntax is platform-specific because different platforms define their resources differently. For Google APIs, the type format must be "{service}/{kind}".
  *   `uid` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the resource. UID is unique in the time and space for this resource within the scope of the service. It is typically generated by the server on successful creation of a resource and must not be changed. UID is used to uniquely identify resources with resource name reuses. This should be a UUID4.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was last updated. Any change to the resource made by users must refresh this value. Changes to a resource made by the service should refresh this value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map(),
          :createTime => DateTime.t(),
          :deleteTime => DateTime.t(),
          :displayName => String.t(),
          :etag => String.t(),
          :labels => map(),
          :location => String.t(),
          :name => String.t(),
          :service => String.t(),
          :type => String.t(),
          :uid => String.t(),
          :updateTime => DateTime.t()
        }

  field(:annotations, type: :map)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:labels, type: :map)
  field(:location)
  field(:name)
  field(:service)
  field(:type)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V2.Model.Resource do
  def decode(value, options) do
    GoogleApi.ServiceControl.V2.Model.Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V2.Model.Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
