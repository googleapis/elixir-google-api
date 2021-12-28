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

defmodule GoogleApi.CivicInfo.V2.Model.FeatureIdProto do
  @moduledoc """
  A globally unique identifier associated with each feature. We use 128-bit identifiers so that we have lots of bits available to distinguish between features. The feature id currently consists of a 64-bit "cell id" that **sometimes** corresponds to the approximate centroid of the feature, plus a 64-bit fingerprint of other identifying information. See more on each respective field in its comments. Feature ids are first assigned when the data is created in MapFacts. After initial creation of the feature, they are immutable. This means that the only properties that you should rely on are that they are unique, and that cell_ids often - but not always - preserve spatial locality. The degree of locality varies as the feature undergoes geometry changes, and should not in general be considered a firm guarantee of the location of any particular feature. In fact, some locationless features have randomized cell IDs! Consumers of FeatureProtos from Mapfacts are guaranteed that fprints in the id field of features will be globally unique. Using the fprint allows consumers who don't need the spatial benefit of cell ids to uniquely identify features in a 64-bit address space. This property is not guaranteed for other sources of FeatureProtos.

  ## Attributes

  *   `cellId` (*type:* `String.t`, *default:* `nil`) - The S2CellId corresponding to the approximate location of this feature as of when it was first created. This can be of variable accuracy, ranging from the exact centroid of the feature at creation, a very large S2 Cell, or even being completely randomized for locationless features. Cell ids have the nice property that they follow a space-filling curve over the surface of the earth. (See s2cellid.h for details.) WARNING: Clients should only use cell IDs to perform spatial locality optimizations. There is no strict guarantee that the cell ID of a feature is related to the current geometry of the feature in any way.
  *   `fprint` (*type:* `String.t`, *default:* `nil`) - A 64-bit fingerprint used to identify features. Most clients should rely on MapFacts or OneRing to choose fingerprints. If creating new fprints, the strategy should be chosen so that the chance of collision is remote or non-existent, and the distribution should be reasonably uniform. For example, if the source data assigns unique ids to features, then a fingerprint of the provider name, version, and source id is sufficient.
  *   `temporaryData` (*type:* `GoogleApi.CivicInfo.V2.Model.MessageSet.t`, *default:* `nil`) - A place for clients to attach arbitrary data to a feature ID. Never set in MapFacts.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cellId => String.t() | nil,
          :fprint => String.t() | nil,
          :temporaryData => GoogleApi.CivicInfo.V2.Model.MessageSet.t() | nil
        }

  field(:cellId)
  field(:fprint)
  field(:temporaryData, as: GoogleApi.CivicInfo.V2.Model.MessageSet)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.FeatureIdProto do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.FeatureIdProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.FeatureIdProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
