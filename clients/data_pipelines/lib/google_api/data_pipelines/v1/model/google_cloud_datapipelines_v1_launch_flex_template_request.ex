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

defmodule GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest do
  @moduledoc """
  A request to launch a Dataflow job from a Flex Template.

  ## Attributes

  *   `launchParameter` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.t`, *default:* `nil`) - Required. Parameter to launch a job from a Flex Template.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Required. The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the Cloud Platform project that the job belongs to.
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - If true, the request is validated but not actually executed. Defaults to false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :launchParameter =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.t()
            | nil,
          :location => String.t() | nil,
          :projectId => String.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:launchParameter,
    as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter
  )

  field(:location)
  field(:projectId)
  field(:validateOnly)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest do
  def decode(value, options) do
    GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
