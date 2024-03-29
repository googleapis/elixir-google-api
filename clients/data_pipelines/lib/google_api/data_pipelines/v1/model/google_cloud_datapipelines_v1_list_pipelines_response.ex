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

defmodule GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ListPipelinesResponse do
  @moduledoc """
  Response message for ListPipelines.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `pipelines` (*type:* `list(GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline.t)`, *default:* `nil`) - Results that matched the filter criteria and were accessible to the caller. Results are always in descending order of pipeline creation date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :pipelines =>
            list(GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline.t()) | nil
        }

  field(:nextPageToken)

  field(:pipelines,
    as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ListPipelinesResponse do
  def decode(value, options) do
    GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ListPipelinesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ListPipelinesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
