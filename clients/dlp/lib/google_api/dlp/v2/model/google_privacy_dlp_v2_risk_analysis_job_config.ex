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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig do
  @moduledoc """
  Configuration for a risk analysis job. See https://cloud.google.com/sensitive-data-protection/docs/concepts-risk-analysis to learn more.

  ## Attributes

  *   `actions` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action.t)`, *default:* `nil`) - Actions to execute at the completion of the job. Are executed in the order provided.
  *   `privacyMetric` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrivacyMetric.t`, *default:* `nil`) - Privacy metric to compute.
  *   `sourceTable` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t`, *default:* `nil`) - Input dataset to compute metrics over.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actions => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action.t()) | nil,
          :privacyMetric => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrivacyMetric.t() | nil,
          :sourceTable => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t() | nil
        }

  field(:actions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action, type: :list)
  field(:privacyMetric, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrivacyMetric)
  field(:sourceTable, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RiskAnalysisJobConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
