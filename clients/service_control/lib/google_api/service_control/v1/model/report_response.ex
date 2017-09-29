# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceControl.V1.Model.ReportResponse do
  @moduledoc """
  Response message for the Report method.

  ## Attributes

  - reportErrors (List[ReportError]): Partial failures, one for each &#x60;Operation&#x60; in the request that failed processing. There are three possible combinations of the RPC status:  1. The combination of a successful RPC status and an empty &#x60;report_errors&#x60;    list indicates a complete success where all &#x60;Operations&#x60; in the    request are processed successfully. 2. The combination of a successful RPC status and a non-empty    &#x60;report_errors&#x60; list indicates a partial success where some    &#x60;Operations&#x60; in the request succeeded. Each    &#x60;Operation&#x60; that failed processing has a corresponding item    in this list. 3. A failed RPC status indicates a general non-deterministic failure.    When this happens, it&#39;s impossible to know which of the    &#39;Operations&#39; in the request succeeded or failed. Defaults to: `null`.
  - reportInfos (List[ReportInfo]): Quota usage for each quota release &#x60;Operation&#x60; request.  Fully or partially failed quota release request may or may not be present in &#x60;report_quota_info&#x60;. For example, a failed quota release request will have the current quota usage info when precise quota library returns the info. A deadline exceeded quota request will not have quota usage info.  If there is no quota release request, report_quota_info will be empty.  Defaults to: `null`.
  - serviceConfigId (String): The actual config id used to process the request. Defaults to: `null`.
  """

  defstruct [
    :"reportErrors",
    :"reportInfos",
    :"serviceConfigId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.ReportResponse do
  import GoogleApi.ServiceControl.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"reportErrors", :list, GoogleApi.ServiceControl.V1.Model.ReportError, options)
    |> deserialize(:"reportInfos", :list, GoogleApi.ServiceControl.V1.Model.ReportInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.ReportResponse do
  def encode(value, options) do
    GoogleApi.ServiceControl.V1.Deserializer.serialize_non_nil(value, options)
  end
end

