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

defmodule GoogleApi.Genomics.V1.Model.Position do
  @moduledoc """
  An abstraction for referring to a genomic position, in relation to some already known reference. For now, represents a genomic position as a reference name, a base number on that reference (0-based), and a determination of forward or reverse strand.

  ## Attributes

  - position (String.t): The 0-based offset from the start of the forward strand for that reference. Defaults to: `null`.
  - referenceName (String.t): The name of the reference in whatever reference set is being used. Defaults to: `null`.
  - reverseStrand (boolean()): Whether this position is on the reverse strand, as opposed to the forward strand. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :position => any(),
          :referenceName => any(),
          :reverseStrand => any()
        }

  field(:position)
  field(:referenceName)
  field(:reverseStrand)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Position do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.Position.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.Position do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
