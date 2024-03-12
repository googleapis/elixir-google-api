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

defmodule GoogleApi.Testing.V1.Model.TestMatrix do
  @moduledoc """
  TestMatrix captures all details about a test. It contains the environment configuration, test specification, test executions and overall state and outcome.

  ## Attributes

  *   `clientInfo` (*type:* `GoogleApi.Testing.V1.Model.ClientInfo.t`, *default:* `nil`) - Information about the client which invoked the test.
  *   `environmentMatrix` (*type:* `GoogleApi.Testing.V1.Model.EnvironmentMatrix.t`, *default:* `nil`) - Required. The devices the tests are being executed on.
  *   `extendedInvalidMatrixDetails` (*type:* `list(GoogleApi.Testing.V1.Model.MatrixErrorDetail.t)`, *default:* `nil`) - Output only. Details about why a matrix was deemed invalid. If multiple checks can be safely performed, they will be reported but no assumptions should be made about the length of this list.
  *   `failFast` (*type:* `boolean()`, *default:* `nil`) - If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  *   `flakyTestAttempts` (*type:* `integer()`, *default:* `nil`) - The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  *   `invalidMatrixDetails` (*type:* `String.t`, *default:* `nil`) - Output only. Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
  *   `outcomeSummary` (*type:* `String.t`, *default:* `nil`) - Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The cloud project that owns the test matrix.
  *   `resultStorage` (*type:* `GoogleApi.Testing.V1.Model.ResultStorage.t`, *default:* `nil`) - Required. Where the results for the matrix are written.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Indicates the current progress of the test matrix.
  *   `testExecutions` (*type:* `list(GoogleApi.Testing.V1.Model.TestExecution.t)`, *default:* `nil`) - Output only. The list of test executions that the service creates for this matrix.
  *   `testMatrixId` (*type:* `String.t`, *default:* `nil`) - Output only. Unique id set by the service.
  *   `testSpecification` (*type:* `GoogleApi.Testing.V1.Model.TestSpecification.t`, *default:* `nil`) - Required. How to run the test.
  *   `timestamp` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this test matrix was initially created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientInfo => GoogleApi.Testing.V1.Model.ClientInfo.t() | nil,
          :environmentMatrix => GoogleApi.Testing.V1.Model.EnvironmentMatrix.t() | nil,
          :extendedInvalidMatrixDetails =>
            list(GoogleApi.Testing.V1.Model.MatrixErrorDetail.t()) | nil,
          :failFast => boolean() | nil,
          :flakyTestAttempts => integer() | nil,
          :invalidMatrixDetails => String.t() | nil,
          :outcomeSummary => String.t() | nil,
          :projectId => String.t() | nil,
          :resultStorage => GoogleApi.Testing.V1.Model.ResultStorage.t() | nil,
          :state => String.t() | nil,
          :testExecutions => list(GoogleApi.Testing.V1.Model.TestExecution.t()) | nil,
          :testMatrixId => String.t() | nil,
          :testSpecification => GoogleApi.Testing.V1.Model.TestSpecification.t() | nil,
          :timestamp => DateTime.t() | nil
        }

  field(:clientInfo, as: GoogleApi.Testing.V1.Model.ClientInfo)
  field(:environmentMatrix, as: GoogleApi.Testing.V1.Model.EnvironmentMatrix)

  field(:extendedInvalidMatrixDetails,
    as: GoogleApi.Testing.V1.Model.MatrixErrorDetail,
    type: :list
  )

  field(:failFast)
  field(:flakyTestAttempts)
  field(:invalidMatrixDetails)
  field(:outcomeSummary)
  field(:projectId)
  field(:resultStorage, as: GoogleApi.Testing.V1.Model.ResultStorage)
  field(:state)
  field(:testExecutions, as: GoogleApi.Testing.V1.Model.TestExecution, type: :list)
  field(:testMatrixId)
  field(:testSpecification, as: GoogleApi.Testing.V1.Model.TestSpecification)
  field(:timestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TestMatrix do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TestMatrix.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TestMatrix do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
