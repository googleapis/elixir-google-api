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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RedactImageRequest do
  @moduledoc """
  Request to search for potentially sensitive info in an image and redact it by covering it with a colored rectangle.

  ## Attributes

  - byteItem (GooglePrivacyDlpV2ByteContentItem): The content must be PNG, JPEG, SVG or BMP. Defaults to: `null`.
  - imageRedactionConfigs ([GooglePrivacyDlpV2ImageRedactionConfig]): The configuration for specifying what content to redact from images. Defaults to: `null`.
  - includeFindings (boolean()): Whether the response should include findings along with the redacted image. Defaults to: `null`.
  - inspectConfig (GooglePrivacyDlpV2InspectConfig): Configuration for the inspector. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :byteItem => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ByteContentItem.t(),
          :imageRedactionConfigs =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageRedactionConfig.t()),
          :includeFindings => any(),
          :inspectConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t()
        }

  field(:byteItem, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ByteContentItem)

  field(:imageRedactionConfigs,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ImageRedactionConfig,
    type: :list
  )

  field(:includeFindings)
  field(:inspectConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RedactImageRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RedactImageRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RedactImageRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
