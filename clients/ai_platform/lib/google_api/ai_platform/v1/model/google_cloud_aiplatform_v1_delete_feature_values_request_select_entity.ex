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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity do
  @moduledoc """
  Message to select entity. If an entity id is selected, all the feature values corresponding to the entity id will be deleted, including the entityId.

  ## Attributes

  *   `entityIdSelector` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EntityIdSelector.t`, *default:* `nil`) - Required. Selectors choosing feature values of which entity id to be deleted from the EntityType.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityIdSelector =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EntityIdSelector.t() | nil
        }

  field(:entityIdSelector,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EntityIdSelector
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end