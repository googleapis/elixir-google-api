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

defmodule GoogleApi.SafeBrowsing.V4.Model.ThreatHit do
  @moduledoc """


  ## Attributes

  - clientInfo (ClientInfo): Client-reported identification. Defaults to: `null`.
  - entry (ThreatEntry): The threat entry responsible for the hit. Full hash should be reported for hash-based hits. Defaults to: `null`.
  - platformType (String.t): The platform type reported. Defaults to: `null`.
    - Enum - one of [PLATFORM_TYPE_UNSPECIFIED, WINDOWS, LINUX, ANDROID, OSX, IOS, ANY_PLATFORM, ALL_PLATFORMS, CHROME]
  - resources ([ThreatSource]): The resources related to the threat hit. Defaults to: `null`.
  - threatType (String.t): The threat type reported. Defaults to: `null`.
    - Enum - one of [THREAT_TYPE_UNSPECIFIED, MALWARE, SOCIAL_ENGINEERING, UNWANTED_SOFTWARE, POTENTIALLY_HARMFUL_APPLICATION, SOCIAL_ENGINEERING_INTERNAL, API_ABUSE, MALICIOUS_BINARY, CSD_WHITELIST, CSD_DOWNLOAD_WHITELIST, CLIENT_INCIDENT, CLIENT_INCIDENT_WHITELIST, APK_MALWARE_OFFLINE, SUBRESOURCE_FILTER, SUSPICIOUS, TRICK_TO_BILL]
  - userInfo (UserInfo): Details about the user that encountered the threat. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientInfo => GoogleApi.SafeBrowsing.V4.Model.ClientInfo.t(),
          :entry => GoogleApi.SafeBrowsing.V4.Model.ThreatEntry.t(),
          :platformType => any(),
          :resources => list(GoogleApi.SafeBrowsing.V4.Model.ThreatSource.t()),
          :threatType => any(),
          :userInfo => GoogleApi.SafeBrowsing.V4.Model.UserInfo.t()
        }

  field(:clientInfo, as: GoogleApi.SafeBrowsing.V4.Model.ClientInfo)
  field(:entry, as: GoogleApi.SafeBrowsing.V4.Model.ThreatEntry)
  field(:platformType)
  field(:resources, as: GoogleApi.SafeBrowsing.V4.Model.ThreatSource, type: :list)
  field(:threatType)
  field(:userInfo, as: GoogleApi.SafeBrowsing.V4.Model.UserInfo)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatHit do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ThreatHit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatHit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
