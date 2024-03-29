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

defmodule GoogleApi.MigrationCenter.V1.Model.RunningProcess do
  @moduledoc """
  Guest OS running process details.

  ## Attributes

  *   `attributes` (*type:* `map()`, *default:* `nil`) - Process extended attributes.
  *   `cmdline` (*type:* `String.t`, *default:* `nil`) - Process full command line.
  *   `exePath` (*type:* `String.t`, *default:* `nil`) - Process binary path.
  *   `pid` (*type:* `String.t`, *default:* `nil`) - Process ID.
  *   `user` (*type:* `String.t`, *default:* `nil`) - User running the process.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => map() | nil,
          :cmdline => String.t() | nil,
          :exePath => String.t() | nil,
          :pid => String.t() | nil,
          :user => String.t() | nil
        }

  field(:attributes, type: :map)
  field(:cmdline)
  field(:exePath)
  field(:pid)
  field(:user)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.RunningProcess do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.RunningProcess.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.RunningProcess do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
