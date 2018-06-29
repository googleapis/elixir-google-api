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

defmodule GoogleApi.Script.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Script.V1.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # Read, send, delete, and manage your email
      "https://mail.google.com/",
      # Manage your calendars
      "https://www.google.com/calendar/feeds",
      # Manage your contacts
      "https://www.google.com/m8/feeds",
      # View and manage the provisioning of groups on your domain
      "https://www.googleapis.com/auth/admin.directory.group",
      # View and manage the provisioning of users on your domain
      "https://www.googleapis.com/auth/admin.directory.user",
      # View and manage your Google Docs documents
      "https://www.googleapis.com/auth/documents",
      # View and manage the files in your Google Drive
      "https://www.googleapis.com/auth/drive",
      # View and manage your forms in Google Drive
      "https://www.googleapis.com/auth/forms",
      # View and manage forms that this application has been installed in
      "https://www.googleapis.com/auth/forms.currentonly",
      # View and manage your Google Groups
      "https://www.googleapis.com/auth/groups",
      # View and manage your spreadsheets in Google Drive
      "https://www.googleapis.com/auth/spreadsheets",
      # View your email address
      "https://www.googleapis.com/auth/userinfo.email"
    ],
    otp_app: :google_api_script,
    base_url: "https://script.googleapis.com"
end
