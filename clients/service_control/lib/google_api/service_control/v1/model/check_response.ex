# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.ServiceControl.V1.Model.CheckResponse do
  @moduledoc """
  Response message for the Check method.

  ## Attributes

  - checkErrors (list(GoogleApi.ServiceControl.V1.Model.CheckError.t)): Indicate the decision of the check.

  If no check errors are present, the service should process the operation.
  Otherwise the service should use the list of errors to determine the
  appropriate action. Defaults to `nil`.
  - checkInfo (GoogleApi.ServiceControl.V1.Model.CheckInfo.t): Feedback data returned from the server during processing a Check request. Defaults to `nil`.
  - operationId (String.t): The same operation_id value used in the CheckRequest.
  Used for logging and diagnostics purposes. Defaults to `nil`.
  - quotaInfo (GoogleApi.ServiceControl.V1.Model.QuotaInfo.t): Quota information for the check request associated with this response.
  Defaults to `nil`.
  - serviceConfigId (String.t): The actual config id used to process the request. Defaults to `nil`.
  - serviceRolloutId (String.t): Unimplemented. The current service rollout id used to process the request. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkErrors => list(GoogleApi.ServiceControl.V1.Model.CheckError.t()),
          :checkInfo => GoogleApi.ServiceControl.V1.Model.CheckInfo.t(),
          :operationId => String.t(),
          :quotaInfo => GoogleApi.ServiceControl.V1.Model.QuotaInfo.t(),
          :serviceConfigId => String.t(),
          :serviceRolloutId => String.t()
        }

  field(:checkErrors, as: GoogleApi.ServiceControl.V1.Model.CheckError, type: :list)
  field(:checkInfo, as: GoogleApi.ServiceControl.V1.Model.CheckInfo)
  field(:operationId)
  field(:quotaInfo, as: GoogleApi.ServiceControl.V1.Model.QuotaInfo)
  field(:serviceConfigId)
  field(:serviceRolloutId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.CheckResponse do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.CheckResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.CheckResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
