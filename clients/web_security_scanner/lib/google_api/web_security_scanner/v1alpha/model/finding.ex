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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.Finding do
  @moduledoc """
  A Finding resource represents a vulnerability instance identified during a
  ScanRun.

  ## Attributes

  *   `body` (*type:* `String.t`, *default:* `nil`) - Output only. The body of the request that triggered the vulnerability.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. The description of the vulnerability.
  *   `finalUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The URL where the browser lands when the vulnerability is detected.
  *   `findingType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the Finding.
  *   `frameUrl` (*type:* `String.t`, *default:* `nil`) - Output only. If the vulnerability was originated from nested IFrame, the immediate
      parent IFrame is reported.
  *   `fuzzedUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The URL produced by the server-side fuzzer and used in the request that
      triggered the vulnerability.
  *   `httpMethod` (*type:* `String.t`, *default:* `nil`) - Output only. The http method of the request that triggered the vulnerability, in
      uppercase.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Finding. The name follows the format of
      'projects/{projectId}/scanConfigs/{scanConfigId}/scanruns/{scanRunId}/findings/{findingId}'.
      The finding IDs are generated by the system.
  *   `outdatedLibrary` (*type:* `GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary.t`, *default:* `nil`) - Output only. An addon containing information about outdated libraries.
  *   `reproductionUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The URL containing human-readable payload that user can leverage to
      reproduce the vulnerability.
  *   `trackingId` (*type:* `String.t`, *default:* `nil`) - Output only. The tracking ID uniquely identifies a vulnerability instance across
      multiple ScanRuns.
  *   `violatingResource` (*type:* `GoogleApi.WebSecurityScanner.V1alpha.Model.ViolatingResource.t`, *default:* `nil`) - Output only. An addon containing detailed information regarding any resource causing the
      vulnerability such as JavaScript sources, image, audio files, etc.
  *   `vulnerableHeaders` (*type:* `GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableHeaders.t`, *default:* `nil`) - Output only. An addon containing information about vulnerable or missing HTTP headers.
  *   `vulnerableParameters` (*type:* `GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableParameters.t`, *default:* `nil`) - Output only. An addon containing information about request parameters which were found
      to be vulnerable.
  *   `xss` (*type:* `GoogleApi.WebSecurityScanner.V1alpha.Model.Xss.t`, *default:* `nil`) - Output only. An addon containing information reported for an XSS, if any.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => String.t(),
          :description => String.t(),
          :finalUrl => String.t(),
          :findingType => String.t(),
          :frameUrl => String.t(),
          :fuzzedUrl => String.t(),
          :httpMethod => String.t(),
          :name => String.t(),
          :outdatedLibrary => GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary.t(),
          :reproductionUrl => String.t(),
          :trackingId => String.t(),
          :violatingResource => GoogleApi.WebSecurityScanner.V1alpha.Model.ViolatingResource.t(),
          :vulnerableHeaders => GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableHeaders.t(),
          :vulnerableParameters =>
            GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableParameters.t(),
          :xss => GoogleApi.WebSecurityScanner.V1alpha.Model.Xss.t()
        }

  field(:body)
  field(:description)
  field(:finalUrl)
  field(:findingType)
  field(:frameUrl)
  field(:fuzzedUrl)
  field(:httpMethod)
  field(:name)
  field(:outdatedLibrary, as: GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary)
  field(:reproductionUrl)
  field(:trackingId)
  field(:violatingResource, as: GoogleApi.WebSecurityScanner.V1alpha.Model.ViolatingResource)
  field(:vulnerableHeaders, as: GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableHeaders)

  field(
    :vulnerableParameters,
    as: GoogleApi.WebSecurityScanner.V1alpha.Model.VulnerableParameters
  )

  field(:xss, as: GoogleApi.WebSecurityScanner.V1alpha.Model.Xss)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.Finding do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.Finding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.Finding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
