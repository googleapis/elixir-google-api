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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageFormField do
  @moduledoc """
  A form field detected on the page.

  ## Attributes

  *   `fieldName` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t`, *default:* `nil`) - Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  *   `fieldValue` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t`, *default:* `nil`) - Layout for the FormField value.
  *   `nameDetectedLanguages` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.t)`, *default:* `nil`) - A list of detected languages for name together with confidence.
  *   `valueDetectedLanguages` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.t)`, *default:* `nil`) - A list of detected languages for value together with confidence.
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the field_value is normal text) - "unfilled_checkbox" - "filled_checkbox"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldName =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t()
            | nil,
          :fieldValue =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t()
            | nil,
          :nameDetectedLanguages =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.t()
            )
            | nil,
          :valueDetectedLanguages =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.t()
            )
            | nil,
          :valueType => String.t() | nil
        }

  field(:fieldName,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout
  )

  field(:fieldValue,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout
  )

  field(:nameDetectedLanguages,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage,
    type: :list
  )

  field(:valueDetectedLanguages,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage,
    type: :list
  )

  field(:valueType)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageFormField do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageFormField.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageFormField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
