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

defmodule GoogleApi.Firestore.V1.Model.TransactionOptions do
  @moduledoc """
  Options for creating a new transaction.

  ## Attributes

  *   `readOnly` (*type:* `GoogleApi.Firestore.V1.Model.ReadOnly.t`, *default:* `nil`) - The transaction can only be used for read operations.
  *   `readWrite` (*type:* `GoogleApi.Firestore.V1.Model.ReadWrite.t`, *default:* `nil`) - The transaction can be used for both read and write operations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :readOnly => GoogleApi.Firestore.V1.Model.ReadOnly.t() | nil,
          :readWrite => GoogleApi.Firestore.V1.Model.ReadWrite.t() | nil
        }

  field(:readOnly, as: GoogleApi.Firestore.V1.Model.ReadOnly)
  field(:readWrite, as: GoogleApi.Firestore.V1.Model.ReadWrite)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.TransactionOptions do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.TransactionOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.TransactionOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
