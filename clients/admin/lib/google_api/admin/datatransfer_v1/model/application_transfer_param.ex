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

defmodule GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam do
  @moduledoc """
  Template for application transfer parameters.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - The type of the transfer parameter, such as `PRIVACY_LEVEL`.
  *   `value` (*type:* `list(String.t)`, *default:* `nil`) - The value of the transfer parameter, such as `PRIVATE` or `SHARED`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :value => list(String.t()) | nil
        }

  field(:key)
  field(:value, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam do
  def decode(value, options) do
    GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Datatransfer_v1.Model.ApplicationTransferParam do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
