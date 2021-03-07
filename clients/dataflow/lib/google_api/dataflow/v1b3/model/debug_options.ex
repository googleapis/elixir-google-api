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

defmodule GoogleApi.Dataflow.V1b3.Model.DebugOptions do
  @moduledoc """
  Describes any options that have an effect on the debugging of pipelines.

  ## Attributes

  *   `enableHotKeyLogging` (*type:* `boolean()`, *default:* `nil`) - When true, enables the logging of the literal hot key to the user's Cloud Logging.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableHotKeyLogging => boolean()
        }

  field(:enableHotKeyLogging)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.DebugOptions do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.DebugOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.DebugOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
