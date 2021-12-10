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

defmodule GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1Activity do
  @moduledoc """


  ## Attributes

  *   `activity` (*type:* `map()`, *default:* `nil`) - A struct of custom fields to explain the activity.
  *   `activityType` (*type:* `String.t`, *default:* `nil`) - The type of the activity.
  *   `fullResourceName` (*type:* `String.t`, *default:* `nil`) - The full resource name that identifies the resource. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
  *   `observationPeriod` (*type:* `GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1ObservationPeriod.t`, *default:* `nil`) - The data observation period to build the activity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activity => map() | nil,
          :activityType => String.t() | nil,
          :fullResourceName => String.t() | nil,
          :observationPeriod =>
            GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1ObservationPeriod.t()
            | nil
        }

  field(:activity, type: :map)
  field(:activityType)
  field(:fullResourceName)

  field(:observationPeriod,
    as: GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1ObservationPeriod
  )
end

defimpl Poison.Decoder, for: GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1Activity do
  def decode(value, options) do
    GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1Activity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PolicyAnalyzer.V1.Model.GoogleCloudPolicyanalyzerV1Activity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
