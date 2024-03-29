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

defmodule GoogleApi.CloudBuild.V2.Model.SecurityContext do
  @moduledoc """
  Security options the container should be run with.

  ## Attributes

  *   `allowPrivilegeEscalation` (*type:* `boolean()`, *default:* `nil`) - Optional. AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows. +optional
  *   `capabilities` (*type:* `GoogleApi.CloudBuild.V2.Model.Capabilities.t`, *default:* `nil`) - Optional. Adds and removes POSIX capabilities from running containers.
  *   `privileged` (*type:* `boolean()`, *default:* `nil`) - Run container in privileged mode.
  *   `runAsGroup` (*type:* `String.t`, *default:* `nil`) - Optional. The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows. +optional
  *   `runAsNonRoot` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. +optional
  *   `runAsUser` (*type:* `String.t`, *default:* `nil`) - Optional. The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows. +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowPrivilegeEscalation => boolean() | nil,
          :capabilities => GoogleApi.CloudBuild.V2.Model.Capabilities.t() | nil,
          :privileged => boolean() | nil,
          :runAsGroup => String.t() | nil,
          :runAsNonRoot => boolean() | nil,
          :runAsUser => String.t() | nil
        }

  field(:allowPrivilegeEscalation)
  field(:capabilities, as: GoogleApi.CloudBuild.V2.Model.Capabilities)
  field(:privileged)
  field(:runAsGroup)
  field(:runAsNonRoot)
  field(:runAsUser)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.SecurityContext do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.SecurityContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.SecurityContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
