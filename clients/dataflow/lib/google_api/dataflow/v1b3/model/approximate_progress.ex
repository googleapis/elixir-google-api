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

defmodule GoogleApi.Dataflow.V1b3.Model.ApproximateProgress do
  @moduledoc """
  Obsolete in favor of ApproximateReportedProgress and ApproximateSplitRequest.

  ## Attributes

  - percentComplete (number()): Obsolete. Defaults to `nil`.
  - position (GoogleApi.Dataflow.V1b3.Model.Position.t): Obsolete. Defaults to `nil`.
  - remainingTime (String.t): Obsolete. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :percentComplete => number(),
          :position => GoogleApi.Dataflow.V1b3.Model.Position.t(),
          :remainingTime => String.t()
        }

  field(:percentComplete)
  field(:position, as: GoogleApi.Dataflow.V1b3.Model.Position)
  field(:remainingTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ApproximateProgress do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ApproximateProgress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ApproximateProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
