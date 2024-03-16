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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateDocumentResponse do
  @moduledoc """
  Response message for DocumentService.UpdateDocument.

  ## Attributes

  *   `document` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Document.t`, *default:* `nil`) - Updated document after executing update request.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ResponseMetadata.t`, *default:* `nil`) - Additional information for the API invocation, such as the request tracking id.
  *   `ruleEngineOutput` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEngineOutput.t`, *default:* `nil`) - Output from Rule Engine recording the rule evaluator and action executor's output. Refer format in: google/cloud/contentwarehouse/v1/rule_engine.proto
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Document.t() | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ResponseMetadata.t()
            | nil,
          :ruleEngineOutput =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEngineOutput.t()
            | nil
        }

  field(:document, as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Document)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ResponseMetadata
  )

  field(:ruleEngineOutput,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEngineOutput
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateDocumentResponse do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateDocumentResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateDocumentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end