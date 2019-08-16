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

defmodule GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse do
  @moduledoc """
  The response message for Operations.ListOperations.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The standard List next-page token.
  *   `operations` (*type:* `list(GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation.t)`, *default:* `nil`) - A list of operations that matches the specified filter in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :operations => list(GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation.t())
        }

  field(:nextPageToken)
  field(:operations, as: GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GoogleLongrunningListOperationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
