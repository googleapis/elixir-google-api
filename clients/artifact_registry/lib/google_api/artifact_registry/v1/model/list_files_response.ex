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

defmodule GoogleApi.ArtifactRegistry.V1.Model.ListFilesResponse do
  @moduledoc """
  The response from listing files.

  ## Attributes

  *   `files` (*type:* `list(GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1File.t)`, *default:* `nil`) - The files returned.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token to retrieve the next page of files, or empty if there are no more files to return.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :files =>
            list(GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1File.t())
            | nil,
          :nextPageToken => String.t() | nil
        }

  field(:files,
    as: GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1File,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.ListFilesResponse do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.ListFilesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.ListFilesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
