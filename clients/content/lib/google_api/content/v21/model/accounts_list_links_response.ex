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

defmodule GoogleApi.Content.V21.Model.AccountsListLinksResponse do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "content#accountsListLinksResponse".
  *   `links` (*type:* `list(GoogleApi.Content.V21.Model.LinkedAccount.t)`, *default:* `nil`) - The list of available links.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token for the retrieval of the next page of links.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :links => list(GoogleApi.Content.V21.Model.LinkedAccount.t()),
          :nextPageToken => String.t()
        }

  field(:kind)
  field(:links, as: GoogleApi.Content.V21.Model.LinkedAccount, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountsListLinksResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountsListLinksResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountsListLinksResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
