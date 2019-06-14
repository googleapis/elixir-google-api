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

defmodule GoogleApi.IdentityToolkit.V3.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.IdentityToolkit.V3.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # View and manage your data across Google Cloud Platform services
      "https://www.googleapis.com/auth/cloud-platform",

      # View and administer all your Firebase data and settings
      "https://www.googleapis.com/auth/firebase"
    ],
    otp_app: :google_api_identitytoolkit,
    base_url: "https://www.googleapis.com/identitytoolkit/v3/relyingparty/"
end
