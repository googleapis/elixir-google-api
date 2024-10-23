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

defmodule GoogleApi.File.V1.Model.FixedIOPS do
  @moduledoc """
  Fixed IOPS (input/output operations per second) parameters.

  ## Attributes

  *   `maxIops` (*type:* `String.t`, *default:* `nil`) - Required. Maximum IOPS.
  *   `maxReadIops` (*type:* `String.t`, *default:* `nil`) - Optional. Deprecated: `max_iops` should be used instead of this parameter. Maximum raw read IOPS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxIops => String.t() | nil,
          :maxReadIops => String.t() | nil
        }

  field(:maxIops)
  field(:maxReadIops)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.FixedIOPS do
  def decode(value, options) do
    GoogleApi.File.V1.Model.FixedIOPS.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.FixedIOPS do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
