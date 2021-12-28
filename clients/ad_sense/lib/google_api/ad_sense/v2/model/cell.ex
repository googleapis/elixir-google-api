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

defmodule GoogleApi.AdSense.V2.Model.Cell do
  @moduledoc """
  Cell representation.

  ## Attributes

  *   `value` (*type:* `String.t`, *default:* `nil`) - Value in the cell. The dimension cells contain strings, and the metric cells contain numbers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :value => String.t() | nil
        }

  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.Cell do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.Cell.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.Cell do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
