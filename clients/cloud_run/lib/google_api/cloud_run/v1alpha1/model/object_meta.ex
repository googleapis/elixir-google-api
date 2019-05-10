# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta do
  @moduledoc """
  ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.

  ## Attributes

  - annotations (%{optional(String.t) &#x3D;&gt; String.t}): Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations +optional Defaults to: `null`.
  - clusterName (String.t): Not currently supported by Cloud Run.  The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request. +optional Defaults to: `null`.
  - creationTimestamp (String.t): CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.  Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata +optional Defaults to: `null`.
  - deletionGracePeriodSeconds (integer()): Not currently supported by Cloud Run.  Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only. +optional Defaults to: `null`.
  - deletionTimestamp (String.t): DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.  Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata +optional Defaults to: `null`.
  - finalizers ([String.t]): Not currently supported by Cloud Run.  Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. +optional +patchStrategy&#x3D;merge Defaults to: `null`.
  - generateName (String.t): Not currently supported by Cloud Run.  GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.  If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).  Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency +optional  string generateName &#x3D; 2; Defaults to: `null`.
  - generation (integer()): A sequence number representing a specific generation of the desired state. Populated by the system. Read-only. +optional Defaults to: `null`.
  - initializers (Initializers): Not currently supported by Cloud Run.  An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in list/watch and get calls) from clients that haven&#39;t explicitly asked to observe uninitialized objects.  When an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and routes. More info: http://kubernetes.io/docs/user-guide/labels +optional Defaults to: `null`.
  - name (String.t): Name must be unique within a namespace, within a Cloud Run region. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names +optional Defaults to: `null`.
  - namespace (String.t): Namespace defines the space within each name must be unique, within a Cloud Run region. In Cloud Run the namespace must be equal to either the project ID or project number. Defaults to: `null`.
  - ownerReferences ([OwnerReference]): List of objects that own this object. If ALL objects in the list have been deleted, this object will be garbage collected. +optional Defaults to: `null`.
  - resourceVersion (String.t): An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.  Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency +optional Defaults to: `null`.
  - selfLink (String.t): SelfLink is a URL representing this object. Populated by the system. Read-only. +optional  string selfLink &#x3D; 4; Defaults to: `null`.
  - uid (String.t): UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.  Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids +optional Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map(),
          :clusterName => any(),
          :creationTimestamp => any(),
          :deletionGracePeriodSeconds => any(),
          :deletionTimestamp => any(),
          :finalizers => list(any()),
          :generateName => any(),
          :generation => any(),
          :initializers => GoogleApi.CloudRun.V1alpha1.Model.Initializers.t(),
          :labels => map(),
          :name => any(),
          :namespace => any(),
          :ownerReferences => list(GoogleApi.CloudRun.V1alpha1.Model.OwnerReference.t()),
          :resourceVersion => any(),
          :selfLink => any(),
          :uid => any()
        }

  field(:annotations, type: :map)
  field(:clusterName)
  field(:creationTimestamp)
  field(:deletionGracePeriodSeconds)
  field(:deletionTimestamp)
  field(:finalizers, type: :list)
  field(:generateName)
  field(:generation)
  field(:initializers, as: GoogleApi.CloudRun.V1alpha1.Model.Initializers)
  field(:labels, type: :map)
  field(:name)
  field(:namespace)
  field(:ownerReferences, as: GoogleApi.CloudRun.V1alpha1.Model.OwnerReference, type: :list)
  field(:resourceVersion)
  field(:selfLink)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
