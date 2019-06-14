# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.ParallelInstruction do
  @moduledoc """
  Describes a particular operation comprising a MapTask.

  ## Attributes

  - flatten (GoogleApi.Dataflow.V1b3.Model.FlattenInstruction.t): Additional information for Flatten instructions. Defaults to `nil`.
  - name (String.t): User-provided name of this operation. Defaults to `nil`.
  - originalName (String.t): System-defined name for the operation in the original workflow graph. Defaults to `nil`.
  - outputs (list(GoogleApi.Dataflow.V1b3.Model.InstructionOutput.t)): Describes the outputs of the instruction. Defaults to `nil`.
  - parDo (GoogleApi.Dataflow.V1b3.Model.ParDoInstruction.t): Additional information for ParDo instructions. Defaults to `nil`.
  - partialGroupByKey (GoogleApi.Dataflow.V1b3.Model.PartialGroupByKeyInstruction.t): Additional information for PartialGroupByKey instructions. Defaults to `nil`.
  - read (GoogleApi.Dataflow.V1b3.Model.ReadInstruction.t): Additional information for Read instructions. Defaults to `nil`.
  - systemName (String.t): System-defined name of this operation.
  Unique across the workflow. Defaults to `nil`.
  - write (GoogleApi.Dataflow.V1b3.Model.WriteInstruction.t): Additional information for Write instructions. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :flatten => GoogleApi.Dataflow.V1b3.Model.FlattenInstruction.t(),
          :name => String.t(),
          :originalName => String.t(),
          :outputs => list(GoogleApi.Dataflow.V1b3.Model.InstructionOutput.t()),
          :parDo => GoogleApi.Dataflow.V1b3.Model.ParDoInstruction.t(),
          :partialGroupByKey => GoogleApi.Dataflow.V1b3.Model.PartialGroupByKeyInstruction.t(),
          :read => GoogleApi.Dataflow.V1b3.Model.ReadInstruction.t(),
          :systemName => String.t(),
          :write => GoogleApi.Dataflow.V1b3.Model.WriteInstruction.t()
        }

  field(:flatten, as: GoogleApi.Dataflow.V1b3.Model.FlattenInstruction)
  field(:name)
  field(:originalName)
  field(:outputs, as: GoogleApi.Dataflow.V1b3.Model.InstructionOutput, type: :list)
  field(:parDo, as: GoogleApi.Dataflow.V1b3.Model.ParDoInstruction)
  field(:partialGroupByKey, as: GoogleApi.Dataflow.V1b3.Model.PartialGroupByKeyInstruction)
  field(:read, as: GoogleApi.Dataflow.V1b3.Model.ReadInstruction)
  field(:systemName)
  field(:write, as: GoogleApi.Dataflow.V1b3.Model.WriteInstruction)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ParallelInstruction do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ParallelInstruction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ParallelInstruction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
