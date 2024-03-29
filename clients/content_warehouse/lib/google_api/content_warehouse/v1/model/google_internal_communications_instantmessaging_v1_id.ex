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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1Id do
  @moduledoc """
  Id for message recipients, e.g. users, groups etc.

  ## Attributes

  *   `app` (*type:* `String.t`, *default:* `nil`) - app is the tachyon client application that generated or is to receive a message.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - country_code is the E164_COUNTRY_CODE format country code for this id, used as a hint for its region. E.g, "+1" will be used for North America, "+86" will be used for China, etc. Should be filled only for RCS group id.
  *   `id` (*type:* `String.t`, *default:* `nil`) - id is a unique (for this type and app) identifier of a message source or recipient.
  *   `locationHint` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1LocationHint.t`, *default:* `nil`) - location_hint is used as a hint for the user's region.
  *   `routingInfoToken` (*type:* `String.t`, *default:* `nil`) - Raw byte array containing encoded routing information. Clients of Tachyon are expected to include the most recent routing_info_cookie that they have received from the server in the requests that they make. Its format is purposely opaque so that clients do not need to concern themselves with the content of this field. This field is expected to be used primarily by Tachygram clients for go/tachygram-groups to simplify the API contract for group operations while reducing the need for unnecessary lookups.
  *   `type` (*type:* `String.t`, *default:* `nil`) - type defines what the id field contains, e.g. phone number, Fi-number, Gaia ID etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :app => String.t() | nil,
          :countryCode => String.t() | nil,
          :id => String.t() | nil,
          :locationHint =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1LocationHint.t()
            | nil,
          :routingInfoToken => String.t() | nil,
          :type => String.t() | nil
        }

  field(:app)
  field(:countryCode)
  field(:id)

  field(:locationHint,
    as:
      GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1LocationHint
  )

  field(:routingInfoToken)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1Id do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1Id.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalCommunicationsInstantmessagingV1Id do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
