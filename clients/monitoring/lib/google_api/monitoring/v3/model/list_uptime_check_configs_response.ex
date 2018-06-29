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

defmodule GoogleApi.Monitoring.V3.Model.ListUptimeCheckConfigsResponse do
  @moduledoc """
  The protocol for the ListUptimeCheckConfigs response.

  ## Attributes

  - nextPageToken (String.t): This field represents the pagination token to retrieve the next page of results. If the value is empty, it means no further results for the request. To retrieve the next page of results, the value of the next_page_token is passed to the subsequent List method call (in the request message&#39;s page_token field). Defaults to: `null`.
  - totalSize (integer()): The total number of uptime check configurations for the project, irrespective of any pagination. Defaults to: `null`.
  - uptimeCheckConfigs ([UptimeCheckConfig]): The returned uptime check configurations. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :totalSize => any(),
          :uptimeCheckConfigs => list(GoogleApi.Monitoring.V3.Model.UptimeCheckConfig.t())
        }

  field(:nextPageToken)
  field(:totalSize)
  field(:uptimeCheckConfigs, as: GoogleApi.Monitoring.V3.Model.UptimeCheckConfig, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ListUptimeCheckConfigsResponse do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ListUptimeCheckConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ListUptimeCheckConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
