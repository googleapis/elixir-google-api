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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateFeatureRequest do
  @moduledoc """
  Request message for FeaturestoreService.CreateFeature. Request message for FeatureRegistryService.CreateFeature.

  ## Attributes

  *   `feature` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature.t`, *default:* `nil`) - Required. The Feature to create.
  *   `featureId` (*type:* `String.t`, *default:* `nil`) - Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the EntityType or FeatureGroup to create a Feature. Format for entity_type as parent: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` Format for feature_group as parent: `projects/{project}/locations/{location}/featureGroups/{feature_group}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :feature => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature.t() | nil,
          :featureId => String.t() | nil,
          :parent => String.t() | nil
        }

  field(:feature, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature)
  field(:featureId)
  field(:parent)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateFeatureRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateFeatureRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateFeatureRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
