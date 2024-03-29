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

defmodule GoogleApi.TrafficDirector.V3.Model.Pipe do
  @moduledoc """


  ## Attributes

  *   `mode` (*type:* `integer()`, *default:* `nil`) - The mode for the Pipe. Not applicable for abstract sockets.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Unix Domain Socket path. On Linux, paths starting with '@' will use the abstract namespace. The starting '@' is replaced by a null byte by Envoy. Paths starting with '@' will result in an error in environments other than Linux.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mode => integer() | nil,
          :path => String.t() | nil
        }

  field(:mode)
  field(:path)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.Pipe do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.Pipe.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.Pipe do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
