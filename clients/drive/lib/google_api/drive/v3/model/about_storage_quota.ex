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

defmodule GoogleApi.Drive.V3.Model.AboutStorageQuota do
  @moduledoc """
  The user&#39;s storage quota limits and usage. All fields are measured in bytes.

  ## Attributes

  - limit (String.t): The usage limit, if applicable. This will not be present if the user has unlimited storage. Defaults to: `null`.
  - usage (String.t): The total usage across all services. Defaults to: `null`.
  - usageInDrive (String.t): The usage by all files in Google Drive. Defaults to: `null`.
  - usageInDriveTrash (String.t): The usage by trashed files in Google Drive. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"limit" => any(),
    :"usage" => any(),
    :"usageInDrive" => any(),
    :"usageInDriveTrash" => any()
  }

  field(:"limit")
  field(:"usage")
  field(:"usageInDrive")
  field(:"usageInDriveTrash")
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.AboutStorageQuota do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.AboutStorageQuota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.AboutStorageQuota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


