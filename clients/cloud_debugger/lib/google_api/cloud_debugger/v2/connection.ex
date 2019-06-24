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

defmodule GoogleApi.CloudDebugger.V2.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.CloudDebugger.V2.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # View and manage your data across Google Cloud Platform services
      "https://www.googleapis.com/auth/cloud-platform",

      # Use Stackdriver Debugger
      "https://www.googleapis.com/auth/cloud_debugger"
    ],
    otp_app: :google_api_clouddebugger,
    base_url: "https://clouddebugger.googleapis.com/"
end
