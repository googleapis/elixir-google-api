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

defmodule GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse do
  @moduledoc """
  Response for setting a breakpoint.

  ## Attributes

  - breakpoint (GoogleApi.CloudDebugger.V2.Model.Breakpoint.t): Breakpoint resource.
  The field `id` is guaranteed to be set (in addition to the echoed fileds). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :breakpoint => GoogleApi.CloudDebugger.V2.Model.Breakpoint.t()
        }

  field(:breakpoint, as: GoogleApi.CloudDebugger.V2.Model.Breakpoint)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
