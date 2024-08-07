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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.Report do
  @moduledoc """
  A single report generated by its parent report.

  ## Attributes

  *   `key` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.ReportKey.t`, *default:* `nil`) - The key information identifying the report.
  *   `metadata` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata.t`, *default:* `nil`) - The metadata of the report.
  *   `params` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Parameters.t`, *default:* `nil`) - The parameters of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => GoogleApi.DoubleClickBidManager.V2.Model.ReportKey.t() | nil,
          :metadata => GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata.t() | nil,
          :params => GoogleApi.DoubleClickBidManager.V2.Model.Parameters.t() | nil
        }

  field(:key, as: GoogleApi.DoubleClickBidManager.V2.Model.ReportKey)
  field(:metadata, as: GoogleApi.DoubleClickBidManager.V2.Model.ReportMetadata)
  field(:params, as: GoogleApi.DoubleClickBidManager.V2.Model.Parameters)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.Report do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.Report.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.Report do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
