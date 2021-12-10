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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRule do
  @moduledoc """
  The data for a phrase match rule.

  ## Attributes

  *   `config` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.t`, *default:* `nil`) - Provides additional information about the rule that specifies how to apply the rule.
  *   `negated` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the phrase must be missing from the transcript segment or present in the transcript segment.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Required. The phrase to be matched.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.t()
            | nil,
          :negated => boolean() | nil,
          :query => String.t() | nil
        }

  field(:config,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
  )

  field(:negated)
  field(:query)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRule do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRule.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
