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

defmodule GoogleApi.Notebooks.V1.Model.UpdateInstanceConfigRequest do
  @moduledoc """
  Request for updating instance configurations.

  ## Attributes

  *   `config` (*type:* `GoogleApi.Notebooks.V1.Model.InstanceConfig.t`, *default:* `nil`) - The instance configurations to be updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.Notebooks.V1.Model.InstanceConfig.t() | nil
        }

  field(:config, as: GoogleApi.Notebooks.V1.Model.InstanceConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.UpdateInstanceConfigRequest do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.UpdateInstanceConfigRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.UpdateInstanceConfigRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
