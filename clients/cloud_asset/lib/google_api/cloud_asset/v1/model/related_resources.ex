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

defmodule GoogleApi.CloudAsset.V1.Model.RelatedResources do
  @moduledoc """
  The related resources of the primary resource.

  ## Attributes

  *   `relatedResources` (*type:* `list(GoogleApi.CloudAsset.V1.Model.RelatedResource.t)`, *default:* `nil`) - The detailed related resources of the primary resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :relatedResources => list(GoogleApi.CloudAsset.V1.Model.RelatedResource.t()) | nil
        }

  field(:relatedResources, as: GoogleApi.CloudAsset.V1.Model.RelatedResource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.RelatedResources do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.RelatedResources.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.RelatedResources do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
