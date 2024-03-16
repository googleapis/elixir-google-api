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

defmodule GoogleApi.Batch.V1.Model.Environment do
  @moduledoc """
  An Environment describes a collection of environment variables to set when executing Tasks.

  ## Attributes

  *   `encryptedVariables` (*type:* `GoogleApi.Batch.V1.Model.KMSEnvMap.t`, *default:* `nil`) - An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  *   `secretVariables` (*type:* `map()`, *default:* `nil`) - A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  *   `variables` (*type:* `map()`, *default:* `nil`) - A map of environment variable names to values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptedVariables => GoogleApi.Batch.V1.Model.KMSEnvMap.t() | nil,
          :secretVariables => map() | nil,
          :variables => map() | nil
        }

  field(:encryptedVariables, as: GoogleApi.Batch.V1.Model.KMSEnvMap)
  field(:secretVariables, type: :map)
  field(:variables, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.Environment do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end