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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_ListOperationsResponse do
  @moduledoc """
  The response message for Operations.ListOperations.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The standard List next-page token.
  *   `operations` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_Operation.t)`, *default:* `nil`) - A list of operations that matches the specified filter in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :operations =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_Operation.t()) | nil
        }

  field(:nextPageToken)

  field(:operations,
    as: GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_Operation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_ListOperationsResponse do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_ListOperationsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleLongrunning_ListOperationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
