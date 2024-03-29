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

defmodule GoogleApi.DataMigration.V1.Model.RoundToScale do
  @moduledoc """
  This allows the data to change scale, for example if the source is 2 digits after the decimal point, specify round to scale value = 2. If for example the value needs to be converted to an integer, use round to scale value = 0.

  ## Attributes

  *   `scale` (*type:* `integer()`, *default:* `nil`) - Required. Scale value to be used
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :scale => integer() | nil
        }

  field(:scale)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.RoundToScale do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.RoundToScale.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.RoundToScale do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
