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

defmodule GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  @moduledoc """
  Response message for GetSiteSummary.

  ## Attributes

  - desktopSummary (PlatformSummary): Summary for the desktop review of the site. Defaults to: `null`.
  - mobileSummary (PlatformSummary): Summary for the mobile review of the site. Defaults to: `null`.
  - reviewedSite (String): The name of the site reviewed. Defaults to: `null`.
  """

  defstruct [
    :"desktopSummary",
    :"mobileSummary",
    :"reviewedSite"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  import GoogleApi.AdExperienceReport.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"desktopSummary", :struct, GoogleApi.AdExperienceReport.V1.Model.PlatformSummary, options)
    |> deserialize(:"mobileSummary", :struct, GoogleApi.AdExperienceReport.V1.Model.PlatformSummary, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExperienceReport.V1.Model.SiteSummaryResponse do
  def encode(value, options) do
    GoogleApi.AdExperienceReport.V1.Deserializer.serialize_non_nil(value, options)
  end
end

