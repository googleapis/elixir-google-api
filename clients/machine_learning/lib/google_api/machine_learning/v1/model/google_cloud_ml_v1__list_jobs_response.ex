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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListJobsResponse do
  @moduledoc """
  Response message for the ListJobs method.

  ## Attributes

  *   `jobs` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job.t)`, *default:* `nil`) - The list of jobs.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Optional. Pass this token as the `page_token` field of the request for a subsequent call.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobs => list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:jobs, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListJobsResponse do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
