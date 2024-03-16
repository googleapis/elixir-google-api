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

defmodule GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Tester do
  @moduledoc """
  A person that can be invited to test apps in a Firebase project.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name of the tester associated with the Google account used to accept the tester invitation.
  *   `groups` (*type:* `list(String.t)`, *default:* `nil`) - The resource names of the groups this tester belongs to.
  *   `lastActivityTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the tester was last active. This is the most recent time the tester installed one of the apps. If they've never installed one or if the release no longer exists, this is the time the tester was added to the project.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the tester resource. Format: `projects/{project_number}/testers/{email_address}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :groups => list(String.t()) | nil,
          :lastActivityTime => DateTime.t() | nil,
          :name => String.t() | nil
        }

  field(:displayName)
  field(:groups, type: :list)
  field(:lastActivityTime, as: DateTime)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Tester do
  def decode(value, options) do
    GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Tester.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Tester do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end