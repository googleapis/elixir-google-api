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

defmodule GoogleApi.ArtifactRegistry.V1.Model.AptArtifact do
  @moduledoc """
  A detailed representation of an Apt artifact. Information in the record is derived from the archive's control file. See https://www.debian.org/doc/debian-policy/ch-controlfields.html

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - Output only. Operating system architecture of the artifact.
  *   `component` (*type:* `String.t`, *default:* `nil`) - Output only. Repository component of the artifact.
  *   `controlFile` (*type:* `String.t`, *default:* `nil`) - Output only. Contents of the artifact's control metadata file.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The Artifact Registry resource name of the artifact.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Output only. The Apt package name of the artifact.
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - Output only. An artifact is a binary or source package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t() | nil,
          :component => String.t() | nil,
          :controlFile => String.t() | nil,
          :name => String.t() | nil,
          :packageName => String.t() | nil,
          :packageType => String.t() | nil
        }

  field(:architecture)
  field(:component)
  field(:controlFile)
  field(:name)
  field(:packageName)
  field(:packageType)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.AptArtifact do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.AptArtifact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.AptArtifact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
