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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataRequest do
  @moduledoc """
  Request message for TensorboardService.ExportTensorboardTimeSeriesData.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Exports the TensorboardTimeSeries' data that match the filter expression.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - Field to use to sort the TensorboardTimeSeries' data. By default, TensorboardTimeSeries' data is returned in a pseudo random order.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of data points to return per page. The default page_size is 1000. Values must be between 1 and 10000. Values above 10000 are coerced to 10000.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token, received from a previous ExportTensorboardTimeSeriesData call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ExportTensorboardTimeSeriesData must match the call that provided the page token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :orderBy => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:filter)
  field(:orderBy)
  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
