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

defmodule GoogleApi.Chat.V1.Model.ListReactionsResponse do
  @moduledoc """
  Response to a list reactions request.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token to retrieve the next page of results. It's empty for the last page of results.
  *   `reactions` (*type:* `list(GoogleApi.Chat.V1.Model.Reaction.t)`, *default:* `nil`) - List of reactions in the requested (or first) page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :reactions => list(GoogleApi.Chat.V1.Model.Reaction.t()) | nil
        }

  field(:nextPageToken)
  field(:reactions, as: GoogleApi.Chat.V1.Model.Reaction, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.ListReactionsResponse do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.ListReactionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.ListReactionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
