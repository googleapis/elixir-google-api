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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateInspectTemplateRequest do
  @moduledoc """
  Request message for CreateInspectTemplate.

  ## Attributes

  *   `inspectTemplate` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectTemplate.t`, *default:* `nil`) - Required. The InspectTemplate to create.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `templateId` (*type:* `String.t`, *default:* `nil`) - The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inspectTemplate => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectTemplate.t(),
          :locationId => String.t(),
          :templateId => String.t()
        }

  field(:inspectTemplate, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectTemplate)
  field(:locationId)
  field(:templateId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateInspectTemplateRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateInspectTemplateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateInspectTemplateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
