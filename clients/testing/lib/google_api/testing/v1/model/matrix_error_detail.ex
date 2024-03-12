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

defmodule GoogleApi.Testing.V1.Model.MatrixErrorDetail do
  @moduledoc """
  Describes a single error or issue with a matrix.

  ## Attributes

  *   `message` (*type:* `String.t`, *default:* `nil`) - Output only. A human-readable message about how the error in the TestMatrix. Expands on the `reason` field with additional details and possible options to fix the issue.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Output only. The reason for the error. This is a constant value in UPPER_SNAKE_CASE that identifies the cause of the error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :reason => String.t() | nil
        }

  field(:message)
  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.MatrixErrorDetail do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.MatrixErrorDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.MatrixErrorDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
