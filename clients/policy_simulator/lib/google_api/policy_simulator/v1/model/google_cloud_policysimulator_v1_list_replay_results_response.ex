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

defmodule GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ListReplayResultsResponse do
  @moduledoc """
  Response message for Simulator.ListReplayResults.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that you can use to retrieve the next page of ReplayResult objects. If this field is omitted, there are no subsequent pages.
  *   `replayResults` (*type:* `list(GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ReplayResult.t)`, *default:* `nil`) - The results of running a Replay.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :replayResults =>
            list(GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ReplayResult.t())
            | nil
        }

  field(:nextPageToken)

  field(:replayResults,
    as: GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ReplayResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ListReplayResultsResponse do
  def decode(value, options) do
    GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ListReplayResultsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1ListReplayResultsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
