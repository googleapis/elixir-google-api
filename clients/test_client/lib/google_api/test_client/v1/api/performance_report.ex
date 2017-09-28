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

defmodule GoogleApi.TestClient.V1.Api.PerformanceReport do
  @moduledoc """
  API calls for all endpoints tagged `PerformanceReport`.
  """

  alias GoogleApi.TestClient.V1.Connection
  import GoogleApi.TestClient.V1.RequestBuilder


  @doc """
  Retrieves the authenticated user&#39;s list of performance metrics.

  ## Parameters

  - connection (GoogleApi.TestClient.V1.Connection): Connection to server
  - account_id (String): The account id to get the reports.
  - end_date_time (String): The end time of the report in ISO 8601 timestamp format using UTC.
  - start_date_time (String): The start time of the report in ISO 8601 timestamp format using UTC.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :max_results (Integer): Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
    - :page_token (String): A continuation token, used to page through performance reports. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response. Optional.

  ## Returns

  {:ok, %GoogleApi.TestClient.V1.Model.PerformanceReportList{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_performance_report_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.TestClient.V1.Model.PerformanceReportList.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_performance_report_list(connection, account_id, end_date_time, start_date_time, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/performancereport", %{
         
       })
    |> add_param(:query, :"accountId", account_id)
    |> add_param(:query, :"endDateTime", end_date_time)
    |> add_param(:query, :"startDateTime", start_date_time)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.TestClient.V1.Model.PerformanceReportList{})
  end
end
