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

defmodule GoogleApi.Script.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Script.V1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Read, compose, send, and permanently delete all your email from Gmail
      "https://mail.google.com/",

      # See, edit, share, and permanently delete all the calendars you can access using Google Calendar
      "https://www.google.com/calendar/feeds",

      # See, edit, download, and permanently delete your contacts
      "https://www.google.com/m8/feeds",

      # View and manage the provisioning of groups on your domain
      "https://www.googleapis.com/auth/admin.directory.group",

      # View and manage the provisioning of users on your domain
      "https://www.googleapis.com/auth/admin.directory.user",

      # See, edit, create, and delete all your Google Docs documents
      "https://www.googleapis.com/auth/documents",

      # See, edit, create, and delete all of your Google Drive files
      "https://www.googleapis.com/auth/drive",

      # View and manage your forms in Google Drive
      "https://www.googleapis.com/auth/forms",

      # View and manage forms that this application has been installed in
      "https://www.googleapis.com/auth/forms.currentonly",

      # View and manage your Google Groups
      "https://www.googleapis.com/auth/groups",

      # Create and update Google Apps Script deployments
      "https://www.googleapis.com/auth/script.deployments",

      # View Google Apps Script deployments
      "https://www.googleapis.com/auth/script.deployments.readonly",

      # View Google Apps Script project's metrics
      "https://www.googleapis.com/auth/script.metrics",

      # View Google Apps Script processes
      "https://www.googleapis.com/auth/script.processes",

      # Create and update Google Apps Script projects
      "https://www.googleapis.com/auth/script.projects",

      # View Google Apps Script projects
      "https://www.googleapis.com/auth/script.projects.readonly",

      # See, edit, create, and delete all your Google Sheets spreadsheets
      "https://www.googleapis.com/auth/spreadsheets",

      # See your primary Google Account email address
      "https://www.googleapis.com/auth/userinfo.email"
    ],
    otp_app: :google_api_script,
    base_url: "https://script.googleapis.com/"
end
