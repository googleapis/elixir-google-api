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

defmodule GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetData do
  @moduledoc """


  ## Attributes

  *   `extra` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureExtra.t)`, *default:* `nil`) - Extra information for this particular FeatureSetData (example timestamp of this frame in the video). (Almost never used).
  *   `feature` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetDataFeatureSetElement.t)`, *default:* `nil`) - The following can have multiple FeatureSetElement(s) Each of these FeatureSetElement correspond to the various feature groups. One concrete example is the way these features are generated - example audio, video or OCR.
  *   `label` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiLabelSetElement.t)`, *default:* `nil`) - Labels for this particular FeatureSetData. (Almost never used). Only interesting when you have (for example) frame level labels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :extra => list(GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureExtra.t()) | nil,
          :feature =>
            list(GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetDataFeatureSetElement.t())
            | nil,
          :label => list(GoogleApi.ContentWarehouse.V1.Model.DrishtiLabelSetElement.t()) | nil
        }

  field(:extra, as: GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureExtra, type: :list)

  field(:feature,
    as: GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetDataFeatureSetElement,
    type: :list
  )

  field(:label, as: GoogleApi.ContentWarehouse.V1.Model.DrishtiLabelSetElement, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.DrishtiFeatureSetData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
