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

defmodule GoogleApi.Dataflow.V1b3.Model.InstructionInput do
  @moduledoc """
  An input of an instruction, as a reference to an output of a
  producer instruction.

  ## Attributes

  - outputNum (integer()): The output index (origin zero) within the producer. Defaults to `nil`.
  - producerInstructionIndex (integer()): The index (origin zero) of the parallel instruction that produces
  the output to be consumed by this input.  This index is relative
  to the list of instructions in this input's instruction's
  containing MapTask. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :outputNum => integer(),
          :producerInstructionIndex => integer()
        }

  field(:outputNum)
  field(:producerInstructionIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.InstructionInput do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.InstructionInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.InstructionInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
