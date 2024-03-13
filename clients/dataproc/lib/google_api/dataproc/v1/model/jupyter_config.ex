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

defmodule GoogleApi.Dataproc.V1.Model.JupyterConfig do
  @moduledoc """
  Jupyter configuration for an interactive session.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Display name, shown in the Jupyter kernelspec card.
  *   `kernel` (*type:* `String.t`, *default:* `nil`) - Optional. Kernel
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :kernel => String.t() | nil
        }

  field(:displayName)
  field(:kernel)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.JupyterConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.JupyterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.JupyterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end