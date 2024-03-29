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

defmodule GoogleApi.Batch.V1.Model.AgentScript do
  @moduledoc """
  Script runnable representation on the agent side.

  ## Attributes

  *   `path` (*type:* `String.t`, *default:* `nil`) - Script file path on the host VM. To specify an interpreter, please add a `#!`(also known as [shebang line](https://en.wikipedia.org/wiki/Shebang_(Unix))) as the first line of the file.(For example, to execute the script using bash, `#!/bin/bash` should be the first line of the file. To execute the script using`Python3`, `#!/usr/bin/env python3` should be the first line of the file.) Otherwise, the file will by default be executed by `/bin/sh`.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Shell script text. To specify an interpreter, please add a `#!\\n` at the beginning of the text.(For example, to execute the script using bash, `#!/bin/bash\\n` should be added. To execute the script using`Python3`, `#!/usr/bin/env python3\\n` should be added.) Otherwise, the script will by default be executed by `/bin/sh`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :path => String.t() | nil,
          :text => String.t() | nil
        }

  field(:path)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.AgentScript do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.AgentScript.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.AgentScript do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
