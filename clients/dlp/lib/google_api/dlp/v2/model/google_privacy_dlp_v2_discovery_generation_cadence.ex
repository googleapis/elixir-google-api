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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryGenerationCadence do
  @moduledoc """
  What must take place for a profile to be updated and how frequently it should occur. New tables are scanned as quickly as possible depending on system capacity.

  ## Attributes

  *   `inspectTemplateModifiedCadence` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence.t`, *default:* `nil`) - Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  *   `schemaModifiedCadence` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.t`, *default:* `nil`) - Governs when to update data profiles when a schema is modified.
  *   `tableModifiedCadence` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryTableModifiedCadence.t`, *default:* `nil`) - Governs when to update data profiles when a table is modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inspectTemplateModifiedCadence =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence.t()
            | nil,
          :schemaModifiedCadence =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.t() | nil,
          :tableModifiedCadence =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryTableModifiedCadence.t() | nil
        }

  field(:inspectTemplateModifiedCadence,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
  )

  field(:schemaModifiedCadence,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
  )

  field(:tableModifiedCadence,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryTableModifiedCadence
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryGenerationCadence do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryGenerationCadence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryGenerationCadence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
