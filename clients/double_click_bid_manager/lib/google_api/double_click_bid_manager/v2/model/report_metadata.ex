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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata do
  @moduledoc """
  The metadata of a report.

  ## Attributes

  *   `googleCloudStoragePath` (*type:* `String.t`, *default:* `nil`) - Output only. The location of the generated report file in Google Cloud Storage. This field will be absent if status.state is not `DONE`.
  *   `reportDataEndDate` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Date.t`, *default:* `nil`) - The end date of the report data date range.
  *   `reportDataStartDate` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Date.t`, *default:* `nil`) - The start date of the report data date range.
  *   `status` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus.t`, *default:* `nil`) - The status of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleCloudStoragePath => String.t() | nil,
          :reportDataEndDate => GoogleApi.DoubleClickBidManager.V2.Model.Date.t() | nil,
          :reportDataStartDate => GoogleApi.DoubleClickBidManager.V2.Model.Date.t() | nil,
          :status => GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus.t() | nil
        }

  field(:googleCloudStoragePath)
  field(:reportDataEndDate, as: GoogleApi.DoubleClickBidManager.V2.Model.Date)
  field(:reportDataStartDate, as: GoogleApi.DoubleClickBidManager.V2.Model.Date)
  field(:status, as: GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
