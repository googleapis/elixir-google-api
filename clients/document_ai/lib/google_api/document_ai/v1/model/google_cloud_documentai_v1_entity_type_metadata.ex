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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EntityTypeMetadata do
  @moduledoc """
  Metadata about an entity type.

  ## Attributes

  *   `humanReviewLabelingMetadata` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewLabelingMetadata.t`, *default:* `nil`) - Human review labeling config on the property.
  *   `humanReviewMetadata` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewValidationMetadata.t`, *default:* `nil`) - Human review config on the entity type.
  *   `inactive` (*type:* `boolean()`, *default:* `nil`) - Whether the entity type should be considered as "inactive".
  *   `prefixedNamingOnProperties` (*type:* `boolean()`, *default:* `nil`) - If set, the properties of this entity type must be prefixed with the parents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :humanReviewLabelingMetadata =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewLabelingMetadata.t()
            | nil,
          :humanReviewMetadata =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewValidationMetadata.t()
            | nil,
          :inactive => boolean() | nil,
          :prefixedNamingOnProperties => boolean() | nil
        }

  field(:humanReviewLabelingMetadata,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewLabelingMetadata
  )

  field(:humanReviewMetadata,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewValidationMetadata
  )

  field(:inactive)
  field(:prefixedNamingOnProperties)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EntityTypeMetadata do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EntityTypeMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1EntityTypeMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end