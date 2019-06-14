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

defmodule GoogleApi.People.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.People.V1.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # See, edit, download, and permanently delete your contacts
      "https://www.googleapis.com/auth/contacts",

      # See and download your contacts
      "https://www.googleapis.com/auth/contacts.readonly",

      # View your street addresses
      "https://www.googleapis.com/auth/user.addresses.read",

      # View your complete date of birth
      "https://www.googleapis.com/auth/user.birthday.read",

      # View your email addresses
      "https://www.googleapis.com/auth/user.emails.read",

      # View your phone numbers
      "https://www.googleapis.com/auth/user.phonenumbers.read",

      # View your email address
      "https://www.googleapis.com/auth/userinfo.email",

      # See your personal info, including any personal info you've made publicly available
      "https://www.googleapis.com/auth/userinfo.profile"
    ],
    otp_app: :google_api_people,
    base_url: "https://people.googleapis.com/"
end
