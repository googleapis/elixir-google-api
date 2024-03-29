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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLink do
  @moduledoc """
  Message containing information about the localized URL linked to from this document in a localized-variation-context.

  ## Attributes

  *   `linkData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLink.t`, *default:* `nil`) - 
  *   `metaData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkMetadata.t`, *default:* `nil`) - 
  *   `targetDocData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkTargetDocData.t`, *default:* `nil`) - 
  *   `validationStatus` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :linkData =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLink.t()
            | nil,
          :metaData =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkMetadata.t()
            | nil,
          :targetDocData =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkTargetDocData.t()
            | nil,
          :validationStatus => String.t() | nil
        }

  field(:linkData,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLink
  )

  field(:metaData,
    as:
      GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkMetadata
  )

  field(:targetDocData,
    as:
      GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkTargetDocData
  )

  field(:validationStatus)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLink do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLink.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
