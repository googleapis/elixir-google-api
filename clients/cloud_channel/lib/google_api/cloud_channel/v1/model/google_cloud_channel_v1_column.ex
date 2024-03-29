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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Column do
  @moduledoc """
  The definition of a report column. Specifies the data properties in the corresponding position of the report rows.

  ## Attributes

  *   `columnId` (*type:* `String.t`, *default:* `nil`) - The unique name of the column (for example, customer_domain, channel_partner, customer_cost). You can use column IDs in RunReportJobRequest.filter. To see all reports and their columns, call CloudChannelReportsService.ListReports.
  *   `dataType` (*type:* `String.t`, *default:* `nil`) - The type of the values for this column.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The column's display name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnId => String.t() | nil,
          :dataType => String.t() | nil,
          :displayName => String.t() | nil
        }

  field(:columnId)
  field(:dataType)
  field(:displayName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Column do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Column.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Column do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
