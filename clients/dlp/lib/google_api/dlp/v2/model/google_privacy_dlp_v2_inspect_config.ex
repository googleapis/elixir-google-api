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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig do
  @moduledoc """
  Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.

  ## Attributes

  - contentOptions ([String.t]): List of options defining data content to scan. If empty, text, images, and other content will be included. Defaults to: `null`.
    - Enum - one of 
  - customInfoTypes ([GooglePrivacyDlpV2CustomInfoType]): CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. Defaults to: `null`.
  - excludeInfoTypes (boolean()): When true, excludes type information of the findings. Defaults to: `null`.
  - includeQuote (boolean()): When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. Defaults to: `null`.
  - infoTypes ([GooglePrivacyDlpV2InfoType]): Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference.  When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.  The special InfoType name \&quot;ALL_BASIC\&quot; can be used to trigger all detectors, but may change over time as new InfoTypes are added. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference. Defaults to: `null`.
  - limits (GooglePrivacyDlpV2FindingLimits):  Defaults to: `null`.
  - minLikelihood (String.t): Only returns findings equal or above this threshold. The default is POSSIBLE. See https://cloud.google.com/dlp/docs/likelihood to learn more. Defaults to: `null`.
    - Enum - one of [LIKELIHOOD_UNSPECIFIED, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - ruleSet ([GooglePrivacyDlpV2InspectionRuleSet]): Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentOptions => list(any()),
          :customInfoTypes => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType.t()),
          :excludeInfoTypes => any(),
          :includeQuote => any(),
          :infoTypes => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t()),
          :limits => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits.t(),
          :minLikelihood => any(),
          :ruleSet => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRuleSet.t())
        }

  field(:contentOptions, type: :list)

  field(:customInfoTypes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CustomInfoType, type: :list)

  field(:excludeInfoTypes)
  field(:includeQuote)
  field(:infoTypes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType, type: :list)
  field(:limits, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits)
  field(:minLikelihood)
  field(:ruleSet, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectionRuleSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
