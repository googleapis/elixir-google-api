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

defmodule GoogleApi.TravelImpactModel.V1.Model.ModelVersion do
  @moduledoc """
  Travel Impact Model version. For more information about the model versioning see https://github.com/google/travel-impact-model/#versioning.

  ## Attributes

  *   `dated` (*type:* `String.t`, *default:* `nil`) - Dated versions: Model datasets are recreated with refreshed input data but no change to the algorithms regularly.
  *   `major` (*type:* `integer()`, *default:* `nil`) - Major versions: Major changes to methodology (e.g. adding new data sources to the model that lead to major output changes). Such changes will be infrequent and announced well in advance. Might involve API version changes, which will respect guidelines in https://cloud.google.com/endpoints/docs/openapi/versioning-an-api#backwards-incompatible
  *   `minor` (*type:* `integer()`, *default:* `nil`) - Minor versions: Changes to the model that, while being consistent across schema versions, change the model parameters or implementation.
  *   `patch` (*type:* `integer()`, *default:* `nil`) - Patch versions: Implementation changes meant to address bugs or inaccuracies in the model implementation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dated => String.t() | nil,
          :major => integer() | nil,
          :minor => integer() | nil,
          :patch => integer() | nil
        }

  field(:dated)
  field(:major)
  field(:minor)
  field(:patch)
end

defimpl Poison.Decoder, for: GoogleApi.TravelImpactModel.V1.Model.ModelVersion do
  def decode(value, options) do
    GoogleApi.TravelImpactModel.V1.Model.ModelVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TravelImpactModel.V1.Model.ModelVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end