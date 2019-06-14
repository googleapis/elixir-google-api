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

defmodule GoogleApi.Dataflow.V1b3.Model.MultiOutputInfo do
  @moduledoc """
  Information about an output of a multi-output DoFn.

  ## Attributes

  - tag (String.t): The id of the tag the user code will emit to this output by; this
  should correspond to the tag of some SideInputInfo. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tag => String.t()
        }

  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.MultiOutputInfo do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.MultiOutputInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.MultiOutputInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
