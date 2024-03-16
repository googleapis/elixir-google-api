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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema do
  @moduledoc """
  Metadata of an entity, including a schema for its properties.

  ## Attributes

  *   `arrayFieldSchema` (*type:* `String.t`, *default:* `nil`) - The above schema, but for an array of the associated entity.
  *   `entity` (*type:* `String.t`, *default:* `nil`) - Name of the entity.
  *   `fieldSchema` (*type:* `String.t`, *default:* `nil`) - List of fields in the entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayFieldSchema => String.t() | nil,
          :entity => String.t() | nil,
          :fieldSchema => String.t() | nil
        }

  field(:arrayFieldSchema)
  field(:entity)
  field(:fieldSchema)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end