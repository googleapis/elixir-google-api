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

defmodule GoogleApi.CloudResourceManager.V1.Model.SearchOrganizationsRequest do
  @moduledoc """
  The request sent to the `SearchOrganizations` method.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - An optional query string used to filter the Organizations to return in the response. Filter rules are case-insensitive. Organizations may be filtered by `owner.directoryCustomerId` or by `domain`, where the domain is a G Suite domain, for example: * Filter `owner.directorycustomerid:123456789` returns Organization resources with `owner.directory_customer_id` equal to `123456789`. * Filter `domain:google.com` returns Organization resources corresponding to the domain `google.com`. This field is optional.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of Organizations to return in the response. This field is optional.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A pagination token returned from a previous call to `SearchOrganizations` that indicates from where listing should continue. This field is optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:filter)
  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.SearchOrganizationsRequest do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.SearchOrganizationsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.SearchOrganizationsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
