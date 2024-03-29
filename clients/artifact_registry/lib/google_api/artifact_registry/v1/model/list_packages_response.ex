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

defmodule GoogleApi.ArtifactRegistry.V1.Model.ListPackagesResponse do
  @moduledoc """
  The response from listing packages.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token to retrieve the next page of packages, or empty if there are no more packages to return.
  *   `packages` (*type:* `list(GoogleApi.ArtifactRegistry.V1.Model.Package.t)`, *default:* `nil`) - The packages returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :packages => list(GoogleApi.ArtifactRegistry.V1.Model.Package.t()) | nil
        }

  field(:nextPageToken)
  field(:packages, as: GoogleApi.ArtifactRegistry.V1.Model.Package, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.ListPackagesResponse do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.ListPackagesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.ListPackagesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
