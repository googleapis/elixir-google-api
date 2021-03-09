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

defmodule GoogleApi.Chat.V1.Model.ListSpacesResponse do
  @moduledoc """


  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token to retrieve the next page of results. It will be empty for the last page of results. Tokens expire in an hour. An error is thrown if an expired token is passed.
  *   `spaces` (*type:* `list(GoogleApi.Chat.V1.Model.Space.t)`, *default:* `nil`) - List of spaces in the requested (or first) page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :spaces => list(GoogleApi.Chat.V1.Model.Space.t()) | nil
        }

  field(:nextPageToken)
  field(:spaces, as: GoogleApi.Chat.V1.Model.Space, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.ListSpacesResponse do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.ListSpacesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.ListSpacesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
