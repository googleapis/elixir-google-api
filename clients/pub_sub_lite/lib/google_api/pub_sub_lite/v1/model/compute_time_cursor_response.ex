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

defmodule GoogleApi.PubSubLite.V1.Model.ComputeTimeCursorResponse do
  @moduledoc """
  Response containing the cursor corresponding to a publish or event time in a topic partition.

  ## Attributes

  *   `cursor` (*type:* `GoogleApi.PubSubLite.V1.Model.Cursor.t`, *default:* `nil`) - If present, the cursor references the first message with time greater than or equal to the specified target time. If such a message cannot be found, the cursor will be unset (i.e. `cursor` is not present).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cursor => GoogleApi.PubSubLite.V1.Model.Cursor.t() | nil
        }

  field(:cursor, as: GoogleApi.PubSubLite.V1.Model.Cursor)
end

defimpl Poison.Decoder, for: GoogleApi.PubSubLite.V1.Model.ComputeTimeCursorResponse do
  def decode(value, options) do
    GoogleApi.PubSubLite.V1.Model.ComputeTimeCursorResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSubLite.V1.Model.ComputeTimeCursorResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
