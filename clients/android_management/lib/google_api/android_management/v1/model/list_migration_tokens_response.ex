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

defmodule GoogleApi.AndroidManagement.V1.Model.ListMigrationTokensResponse do
  @moduledoc """
  Response to a request to list migration tokens for a given enterprise.

  ## Attributes

  *   `migrationTokens` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.MigrationToken.t)`, *default:* `nil`) - The migration tokens from the specified enterprise.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :migrationTokens => list(GoogleApi.AndroidManagement.V1.Model.MigrationToken.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:migrationTokens, as: GoogleApi.AndroidManagement.V1.Model.MigrationToken, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ListMigrationTokensResponse do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ListMigrationTokensResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ListMigrationTokensResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
