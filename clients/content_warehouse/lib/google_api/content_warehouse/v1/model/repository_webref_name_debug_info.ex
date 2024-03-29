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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo do
  @moduledoc """
  Collects signals from one query used for prior learning.

  ## Attributes

  *   `candidates` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfoCandidateInfo.t)`, *default:* `nil`) - List of per-candidate signals derived from annotation of this query.
  *   `query` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLocalizedString.t`, *default:* `nil`) - Query with region (language is set in parent NameInfo).
  *   `weight` (*type:* `number()`, *default:* `nil`) - Query weight used in learning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :candidates =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfoCandidateInfo.t()
            )
            | nil,
          :query => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLocalizedString.t() | nil,
          :weight => number() | nil
        }

  field(:candidates,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfoCandidateInfo,
    type: :list
  )

  field(:query, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLocalizedString)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
