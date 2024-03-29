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

defmodule GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResource do
  @moduledoc """
  A resource that allows executing scripts on the VM. The `ExecResource` has 2 stages: `validate` and `enforce` and both stages accept a script as an argument to execute. When the `ExecResource` is applied by the agent, it first executes the script in the `validate` stage. The `validate` stage can signal that the `ExecResource` is already in the desired state by returning an exit code of `100`. If the `ExecResource` is not in the desired state, it should return an exit code of `101`. Any other exit code returned by this stage is considered an error. If the `ExecResource` is not in the desired state based on the exit code from the `validate` stage, the agent proceeds to execute the script from the `enforce` stage. If the `ExecResource` is already in the desired state, the `enforce` stage will not be run. Similar to `validate` stage, the `enforce` stage should return an exit code of `100` to indicate that the resource in now in its desired state. Any other exit code is considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101` vs `1`) to have an explicit indicator of `in desired state`, `not in desired state` and errors. Because, for example, Powershell will always return an exit code of `0` unless an `exit` statement is provided in the script. So, for reasons of consistency and being explicit, exit codes `100` and `101` were chosen.

  ## Attributes

  *   `enforce` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResourceExec.t`, *default:* `nil`) - What to run to bring this resource into the desired state. An exit code of 100 indicates "success", any other exit code indicates a failure running enforce.
  *   `validate` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResourceExec.t`, *default:* `nil`) - Required. What to run to validate this resource is in the desired state. An exit code of 100 indicates "in desired state", and exit code of 101 indicates "not in desired state". Any other exit code indicates a failure running validate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enforce => GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResourceExec.t() | nil,
          :validate => GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResourceExec.t() | nil
        }

  field(:enforce, as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResourceExec)
  field(:validate, as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResourceExec)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResource do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyResourceExecResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
