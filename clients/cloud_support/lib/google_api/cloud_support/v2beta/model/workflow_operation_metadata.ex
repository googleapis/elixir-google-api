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

defmodule GoogleApi.CloudSupport.V2beta.Model.WorkflowOperationMetadata do
  @moduledoc """
  Metadata about the operation. Used to lookup the current status.

  ## Attributes

  *   `namespace` (*type:* `String.t`, *default:* `nil`) - The namespace that the job was scheduled in. Must be included in the workflow metadata so the workflow status can be retrieved.
  *   `operationAction` (*type:* `String.t`, *default:* `nil`) - The type of action the operation is classified as.
  *   `workflowOperationType` (*type:* `String.t`, *default:* `nil`) - Which version of the workflow service this operation came from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namespace => String.t() | nil,
          :operationAction => String.t() | nil,
          :workflowOperationType => String.t() | nil
        }

  field(:namespace)
  field(:operationAction)
  field(:workflowOperationType)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.WorkflowOperationMetadata do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.WorkflowOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.WorkflowOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
