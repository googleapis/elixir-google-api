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

defmodule GoogleApi.Language.V1.Model.XPSModelArtifactItem do
  @moduledoc """
  A single model artifact item.

  ## Attributes

  *   `artifactFormat` (*type:* `String.t`, *default:* `nil`) - The model artifact format.
  *   `gcsUri` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage (GCS) uri that stores the model binary files.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactFormat => String.t() | nil,
          :gcsUri => String.t() | nil
        }

  field(:artifactFormat)
  field(:gcsUri)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSModelArtifactItem do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSModelArtifactItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSModelArtifactItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end