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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest do
  @moduledoc """
  The request used for `CreateInstance`.

  ## Attributes

  *   `instance` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance.t`, *default:* `nil`) - Specifies the instance to create.
      The name in the instance, if specified in the instance, is ignored.
  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - ID of the created instance.
      A valid `instance_id` must:
      be 6-50 characters long,
      contain only lowercase letters, digits, hyphens and underscores,
      start with a lowercase letter, and
      end with a lowercase letter or a digit.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Resource name of the project containing the instance.
      Format: `projects/[PROJECT_ID]`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instance =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance.t(),
          :instanceId => String.t(),
          :parent => String.t()
        }

  field(:instance,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
  )

  field(:instanceId)
  field(:parent)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
