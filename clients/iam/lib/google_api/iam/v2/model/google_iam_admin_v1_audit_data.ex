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

defmodule GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditData do
  @moduledoc """
  Audit log information specific to Cloud IAM admin APIs. This message is serialized as an `Any` type in the `ServiceData` message of an `AuditLog` message.

  ## Attributes

  *   `permissionDelta` (*type:* `GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditDataPermissionDelta.t`, *default:* `nil`) - The permission_delta when when creating or updating a Role.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permissionDelta =>
            GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditDataPermissionDelta.t() | nil
        }

  field(:permissionDelta, as: GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditDataPermissionDelta)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditData do
  def decode(value, options) do
    GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V2.Model.GoogleIamAdminV1AuditData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
