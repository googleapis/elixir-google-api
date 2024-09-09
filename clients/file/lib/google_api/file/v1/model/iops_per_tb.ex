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

defmodule GoogleApi.File.V1.Model.IOPSPerTB do
  @moduledoc """
  IOPS per TB. Filestore defines TB as 1024^4 bytes (TiB).

  ## Attributes

  *   `maxReadIopsPerTb` (*type:* `String.t`, *default:* `nil`) - Required. Maximum read IOPS per TiB.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxReadIopsPerTb => String.t() | nil
        }

  field(:maxReadIopsPerTb)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.IOPSPerTB do
  def decode(value, options) do
    GoogleApi.File.V1.Model.IOPSPerTB.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.IOPSPerTB do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
