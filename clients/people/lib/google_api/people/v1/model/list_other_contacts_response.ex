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

defmodule GoogleApi.People.V1.Model.ListOtherContactsResponse do
  @moduledoc """
  The response to a request for the authenticated user's "Other contacts".

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `nextSyncToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `sync_token` to retrieve changes since the last request. Request must set `request_sync_token` to return the sync token.
  *   `otherContacts` (*type:* `list(GoogleApi.People.V1.Model.Person.t)`, *default:* `nil`) - The list of "Other contacts" returned as Person resources. "Other contacts" support a limited subset of fields. See ListOtherContactsRequest.request_mask for more detailed information.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of other contacts in the list without pagination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :nextSyncToken => String.t() | nil,
          :otherContacts => list(GoogleApi.People.V1.Model.Person.t()) | nil,
          :totalSize => integer() | nil
        }

  field(:nextPageToken)
  field(:nextSyncToken)
  field(:otherContacts, as: GoogleApi.People.V1.Model.Person, type: :list)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.ListOtherContactsResponse do
  def decode(value, options) do
    GoogleApi.People.V1.Model.ListOtherContactsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.ListOtherContactsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
