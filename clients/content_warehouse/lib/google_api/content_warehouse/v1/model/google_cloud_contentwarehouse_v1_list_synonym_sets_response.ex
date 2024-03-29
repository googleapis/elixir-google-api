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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ListSynonymSetsResponse do
  @moduledoc """
  Response message for SynonymSetService.ListSynonymSets.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A page token, received from a previous `ListSynonymSets` call. Provide this to retrieve the subsequent page.
  *   `synonymSets` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1SynonymSet.t)`, *default:* `nil`) - The synonymSets from the specified parent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :synonymSets =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1SynonymSet.t())
            | nil
        }

  field(:nextPageToken)

  field(:synonymSets,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1SynonymSet,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ListSynonymSetsResponse do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ListSynonymSetsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ListSynonymSetsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
