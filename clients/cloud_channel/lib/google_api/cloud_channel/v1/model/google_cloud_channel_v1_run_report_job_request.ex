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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1RunReportJobRequest do
  @moduledoc """
  Request message for CloudChannelReportsService.RunReportJob.

  ## Attributes

  *   `dateRange` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1DateRange.t`, *default:* `nil`) - Optional. The range of usage or invoice dates to include in the result.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. A structured string that defines conditions on dimension columns to restrict the report output. Filters support logical operators (AND, OR, NOT) and conditional operators (=, !=, <, >, <=, and >=) using `column_id` as keys. For example: `(customer:"accounts/C123abc/customers/S456def" OR customer:"accounts/C123abc/customers/S789ghi") AND invoice_start_date.year >= 2022`
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The BCP-47 language code, such as "en-US". If specified, the response is localized to the corresponding language code if the original data sources support it. Default is "en-US".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateRange => GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1DateRange.t() | nil,
          :filter => String.t() | nil,
          :languageCode => String.t() | nil
        }

  field(:dateRange, as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1DateRange)
  field(:filter)
  field(:languageCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1RunReportJobRequest do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1RunReportJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1RunReportJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
