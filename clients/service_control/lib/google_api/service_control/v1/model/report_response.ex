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

defmodule GoogleApi.ServiceControl.V1.Model.ReportResponse do
  @moduledoc """
  Response message for the Report method.

  ## Attributes

  - reportErrors (list(GoogleApi.ServiceControl.V1.Model.ReportError.t)): Partial failures, one for each `Operation` in the request that failed
  processing. There are three possible combinations of the RPC status:

  1. The combination of a successful RPC status and an empty `report_errors`
   list indicates a complete success where all `Operations` in the
   request are processed successfully.
  2. The combination of a successful RPC status and a non-empty
   `report_errors` list indicates a partial success where some
   `Operations` in the request succeeded. Each
   `Operation` that failed processing has a corresponding item
   in this list.
  3. A failed RPC status indicates a general non-deterministic failure.
   When this happens, it's impossible to know which of the
   'Operations' in the request succeeded or failed. Defaults to `nil`.
  - reportInfos (list(GoogleApi.ServiceControl.V1.Model.ReportInfo.t)): Quota usage for each quota release `Operation` request.

  Fully or partially failed quota release request may or may not be present
  in `report_quota_info`. For example, a failed quota release request will
  have the current quota usage info when precise quota library returns the
  info. A deadline exceeded quota request will not have quota usage info.

  If there is no quota release request, report_quota_info will be empty.
  Defaults to `nil`.
  - serviceConfigId (String.t): The actual config id used to process the request. Defaults to `nil`.
  - serviceRolloutId (String.t): Unimplemented. The current service rollout id used to process the request. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reportErrors => list(GoogleApi.ServiceControl.V1.Model.ReportError.t()),
          :reportInfos => list(GoogleApi.ServiceControl.V1.Model.ReportInfo.t()),
          :serviceConfigId => String.t(),
          :serviceRolloutId => String.t()
        }

  field(:reportErrors, as: GoogleApi.ServiceControl.V1.Model.ReportError, type: :list)
  field(:reportInfos, as: GoogleApi.ServiceControl.V1.Model.ReportInfo, type: :list)
  field(:serviceConfigId)
  field(:serviceRolloutId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.ReportResponse do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.ReportResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.ReportResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
