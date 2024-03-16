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

defmodule GoogleApi.AlloyDB.V1.Model.QuantityBasedRetention do
  @moduledoc """
  A quantity based policy specifies that a certain number of the most recent successful backups should be retained.

  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - The number of backups to retain.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil
        }

  field(:count)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.QuantityBasedRetention do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.QuantityBasedRetention.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.QuantityBasedRetention do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end