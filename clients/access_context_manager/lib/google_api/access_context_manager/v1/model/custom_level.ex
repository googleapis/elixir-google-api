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

defmodule GoogleApi.AccessContextManager.V1.Model.CustomLevel do
  @moduledoc """
  `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
  to represent the necessary conditions for the level to apply to a request.
  See CEL spec at: https://github.com/google/cel-spec

  ## Attributes

  *   `expr` (*type:* `GoogleApi.AccessContextManager.V1.Model.Expr.t`, *default:* `nil`) - Required. A Cloud CEL expression evaluating to a boolean.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expr => GoogleApi.AccessContextManager.V1.Model.Expr.t()
        }

  field(:expr, as: GoogleApi.AccessContextManager.V1.Model.Expr)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.CustomLevel do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.CustomLevel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.CustomLevel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
