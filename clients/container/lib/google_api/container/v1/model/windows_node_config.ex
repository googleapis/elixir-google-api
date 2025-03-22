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

defmodule GoogleApi.Container.V1.Model.WindowsNodeConfig do
  @moduledoc """
  Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings.

  ## Attributes

  *   `osVersion` (*type:* `String.t`, *default:* `nil`) - OSVersion specifies the Windows node config to be used on the node.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :osVersion => String.t() | nil
        }

  field(:osVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.WindowsNodeConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.WindowsNodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.WindowsNodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
