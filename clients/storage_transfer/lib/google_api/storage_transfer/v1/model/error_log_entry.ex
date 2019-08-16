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

defmodule GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry do
  @moduledoc """
  An entry describing an error that has occurred.

  ## Attributes

  *   `errorDetails` (*type:* `list(String.t)`, *default:* `nil`) - A list of messages that carry the error details.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Required. A URL that refers to the target (a data source, a data sink,
      or an object) with which the error is associated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorDetails => list(String.t()),
          :url => String.t()
        }

  field(:errorDetails, type: :list)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.ErrorLogEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
