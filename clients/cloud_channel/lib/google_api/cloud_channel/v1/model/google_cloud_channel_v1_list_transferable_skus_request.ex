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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableSkusRequest do
  @moduledoc """
  Request message for CloudChannelService.ListTransferableSkus

  ## Attributes

  *   `authToken` (*type:* `String.t`, *default:* `nil`) - The super admin of the resold customer generates this token to authorize a reseller to access their Cloud Identity and purchase entitlements on their behalf. You can omit this token after authorization. See https://support.google.com/a/answer/7643790 for more details.
  *   `cloudIdentityId` (*type:* `String.t`, *default:* `nil`) - Customer's Cloud Identity ID
  *   `customerName` (*type:* `String.t`, *default:* `nil`) - A reseller is required to create a customer and use the resource name of the created customer here. Customer_name uses the format: accounts/{account_id}/customers/{customer_id}
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code. For example, "en-US". The response will localize in the corresponding language code, if specified. The default value is "en-US". Optional.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 SKUs. The maximum value is 1000; the server will coerce values above 1000. Optional.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A token for a page of results other than the first page. Obtained using ListTransferableSkusResponse.next_page_token of the previous CloudChannelService.ListTransferableSkus call. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authToken => String.t() | nil,
          :cloudIdentityId => String.t() | nil,
          :customerName => String.t() | nil,
          :languageCode => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:authToken)
  field(:cloudIdentityId)
  field(:customerName)
  field(:languageCode)
  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableSkusRequest do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableSkusRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableSkusRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
