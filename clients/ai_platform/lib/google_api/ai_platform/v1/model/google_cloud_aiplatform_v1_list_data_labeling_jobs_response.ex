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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListDataLabelingJobsResponse do
  @moduledoc """
  Response message for JobService.ListDataLabelingJobs.

  ## Attributes

  *   `dataLabelingJobs` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DataLabelingJob.t)`, *default:* `nil`) - A list of DataLabelingJobs that matches the specified filter in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The standard List next-page token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataLabelingJobs =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DataLabelingJob.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:dataLabelingJobs,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DataLabelingJob,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListDataLabelingJobsResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListDataLabelingJobsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListDataLabelingJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
