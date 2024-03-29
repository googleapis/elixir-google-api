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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics do
  @moduledoc """
  Evaluation metrics when retrieving `n` smart replies with the model.

  ## Attributes

  *   `n` (*type:* `integer()`, *default:* `nil`) - Number of retrieved smart replies. For example, when `n` is 3, this evaluation contains metrics for when Dialogflow retrieves 3 smart replies with the model.
  *   `recall` (*type:* `number()`, *default:* `nil`) - Defined as `number of queries whose top n smart replies have at least one similar (token match similarity above the defined threshold) reply as the real reply` divided by `number of queries with at least one smart reply`. Value ranges from 0.0 to 1.0 inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :n => integer() | nil,
          :recall => number() | nil
        }

  field(:n)
  field(:recall)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
