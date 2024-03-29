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

defmodule GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsErrorInfo do
  @moduledoc """
  Error information explaining why a package was not imported.

  ## Attributes

  *   `error` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.Status.t`, *default:* `nil`) - The detailed error status.
  *   `gcsSource` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsGcsSource.t`, *default:* `nil`) - Google Cloud Storage location requested.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.ArtifactRegistry.V1.Model.Status.t() | nil,
          :gcsSource => GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsGcsSource.t() | nil
        }

  field(:error, as: GoogleApi.ArtifactRegistry.V1.Model.Status)
  field(:gcsSource, as: GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsGcsSource)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsErrorInfo do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsErrorInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.ImportAptArtifactsErrorInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
