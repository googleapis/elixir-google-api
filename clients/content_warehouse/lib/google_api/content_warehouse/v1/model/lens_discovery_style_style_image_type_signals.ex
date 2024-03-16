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

defmodule GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals do
  @moduledoc """
  Prediction of a style image type: Stage, Stock, Street or Outfits. Check http://go/styleai-indexing-g3doc#style-image-type-classifier for more details about the Style AI Style Image Type Classifier.

  ## Attributes

  *   `styleImageTypePredictions` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignalsStyleImageTypePrediction.t)`, *default:* `nil`) - Repeated for # of StyleImageType types.
  *   `version` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :styleImageTypePredictions =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignalsStyleImageTypePrediction.t()
            )
            | nil,
          :version => String.t() | nil
        }

  field(:styleImageTypePredictions,
    as:
      GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignalsStyleImageTypePrediction,
    type: :list
  )

  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end