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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdForwardingsProto do
  @moduledoc """
  Feature ID forwardings. There are many different types of ID forwardings, some of which are attached to live features, others to removed features. This information is available in multiple forms (with different completeness guarantees): (1) in RPC responses to read requests to the live Geo repository; (2) on disk, as part of the metadata section of features found in the (inactive) features snapshots; (3) on disk, as part of a separate feature_id_forwardings side table.

  ## Attributes

  *   `duplicateOf` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - If the feature has been marked as a DUPLICATE of another feature, this is the feature ID of that other feature. Note that the other feature may itself be removed. This field is always set.
  *   `forwardedId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - The feature ID of the forwarded feature. This field is only set in case (3).
  *   `inactiveDuplicate` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t)`, *default:* `nil`) - If other features have been marked as DUPLICATE of this feature, this is the set of all such feature IDs. All feature IDs in this set should be for removed (aka inactive) features. Note that in the context of historical read requests against MapFacts (when ReadRequest.version_selection.timestamp is set), this field won't be set.
  *   `replacedBy` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdListProto.t`, *default:* `nil`) - DEPRECATED - Use feature.metadata.feature_replacement_info instead. This field was never populated.
  *   `transitivelyDuplicateOf` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - If the feature has been transitively marked as a DUPLICATE of another feature (via a chain of size >= 1), this is the feature ID of that other feature which is the end of the chain. The field is always set even if the chain is of size 1. Note that the other feature may itself be removed. This field is only set in case (3).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duplicateOf => GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil,
          :forwardedId => GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil,
          :inactiveDuplicate =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t()) | nil,
          :replacedBy => GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdListProto.t() | nil,
          :transitivelyDuplicateOf =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil
        }

  field(:duplicateOf, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)
  field(:forwardedId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)

  field(:inactiveDuplicate,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto,
    type: :list
  )

  field(:replacedBy, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdListProto)
  field(:transitivelyDuplicateOf, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdForwardingsProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdForwardingsProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdForwardingsProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end