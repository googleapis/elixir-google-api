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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary do
  @moduledoc """
  Summary of a single tranformation. Only one of &#39;transformation&#39;, &#39;field_transformation&#39;, or &#39;record_suppress&#39; will be set.

  ## Attributes

  - field (GooglePrivacyDlpV2FieldId): Set if the transformation was limited to a specific FieldId. Defaults to: `null`.
  - fieldTransformations ([GooglePrivacyDlpV2FieldTransformation]): The field transformation that was applied. If multiple field transformations are requested for a single field, this list will contain all of them; otherwise, only one is supplied. Defaults to: `null`.
  - infoType (GooglePrivacyDlpV2InfoType): Set if the transformation was limited to a specific InfoType. Defaults to: `null`.
  - recordSuppress (GooglePrivacyDlpV2RecordSuppression): The specific suppression option these stats apply to. Defaults to: `null`.
  - results ([GooglePrivacyDlpV2SummaryResult]):  Defaults to: `null`.
  - transformation (GooglePrivacyDlpV2PrimitiveTransformation): The specific transformation these stats apply to. Defaults to: `null`.
  - transformedBytes (String.t): Total size in bytes that were transformed in some way. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t(),
          :fieldTransformations =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation.t()),
          :infoType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t(),
          :recordSuppress => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression.t(),
          :results => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SummaryResult.t()),
          :transformation => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t(),
          :transformedBytes => any()
        }

  field(:field, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)

  field(:fieldTransformations,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation,
    type: :list
  )

  field(:infoType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType)
  field(:recordSuppress, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression)
  field(:results, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SummaryResult, type: :list)
  field(:transformation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation)
  field(:transformedBytes)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
