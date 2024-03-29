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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScamGenericFeatureVectorRestrictTokens do
  @moduledoc """
  copybara:strip_begin RestrictTokens - used to perform "restricted searches" where boolean rules are used to filter the subset of the database eligible for matching. We currently support V1 and V3 restrict systems. V3 restrict is a superset of V1 restrict. New users are encouraged to use V3 directly for its rich features and cleaner semantics. See the document go/scam-v3-restricts, or read the comments in //research/scam/proto/restricts.proto for details. Nevertheless, V1 restrict is still supported by ScaM team. There's some minor tradeoff of performance between V1 and V3. User may prefer V1 over V3 if performance is the first priority. However, the CPU cost between V1 and V3 should be very minor. --------------------------------------------------------------------------- The semantics of V1 restrict is described below: V1 "forward" restricts: The dataset defines a many:many mapping between the database points and a token space. Each token names a set of tokens and each database point is a member of zero-to-many tokens. Queries specify zero-to-many whitelist and blacklist tokens that activate database points according to the following rules: * If whitelist_token is populated, the search will be restricted to points named by at least one whitelist token. If whitelist_token is empty, all points are whitelisted by default. * If blacklist_token is populated, it overrides the whitelist. Points named by a blacklisted token are *not* searched. * Note that, if neither whitelist_token nor blacklist_token is populated, the search remains unrestricted. --------------------------------------------------------------------------- V1 "reverse" restricts: Each database point is whitelisted and/or blacklisted for zero or more tokens, specified by whitelist_token and blacklist_token fields. Each query specifies zero or more tokens, and the same rules apply: * If a point's whitelist_token is populated, the point will only be searched if the query has at least one matching whitelist token. If whitelist_token is empty, the point is always whitelisted by default. * If a point's blacklist_token is populated, it overrides the whitelist. The point will be ignored for any query with a matching blacklist token. * Note that, if neither whitelist_token nor blacklist_token is populated, the point will always be searched. NEXT ID TO USE: 9

  ## Attributes

  *   `blacklistToken` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `definition` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamRestrictDefinition.t`, *default:* `nil`) - DEPRECATED
  *   `easyDefinition` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamEasyRestrictDefinition.t`, *default:* `nil`) - DEPRECATED
  *   `tokenMembership` (*type:* `list(String.t)`, *default:* `nil`) - B) Token Definitions (V1 Restricts) In "forward" mode: defined on database points In "reverse" mode: defined on queries
  *   `tokens` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamRestrictTokensV2.t`, *default:* `nil`) - DEPRECATED
  *   `v3` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScamV3Restrict.t`, *default:* `nil`) - Only ONE of the following sections should be used: A) V3 restricts. Defined in //research/scam/proto/restricts.proto
  *   `v3CompatibleNamespace` (*type:* `String.t`, *default:* `nil`) - If this field is not empty, when query is in V1 restricts while database is in V3 restricts, SCaM will update V1 query to V3 automatically instead of sending error messages. When updating query from V1 to V3, SCaM server will use this field to fillin the 'namespace' field.
  *   `whitelistToken` (*type:* `list(String.t)`, *default:* `nil`) - C) Whitelist / Blacklist Definitions (V1 Restricts) In "forward" mode: defined on queries In "reverse" mode: defined on database points
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blacklistToken => list(String.t()) | nil,
          :definition =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamRestrictDefinition.t() | nil,
          :easyDefinition =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamEasyRestrictDefinition.t() | nil,
          :tokenMembership => list(String.t()) | nil,
          :tokens =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamRestrictTokensV2.t() | nil,
          :v3 => GoogleApi.ContentWarehouse.V1.Model.ResearchScamV3Restrict.t() | nil,
          :v3CompatibleNamespace => String.t() | nil,
          :whitelistToken => list(String.t()) | nil
        }

  field(:blacklistToken, type: :list)
  field(:definition, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamRestrictDefinition)

  field(:easyDefinition,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamEasyRestrictDefinition
  )

  field(:tokenMembership, type: :list)
  field(:tokens, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamRestrictTokensV2)
  field(:v3, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScamV3Restrict)
  field(:v3CompatibleNamespace)
  field(:whitelistToken, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamGenericFeatureVectorRestrictTokens do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScamGenericFeatureVectorRestrictTokens.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamGenericFeatureVectorRestrictTokens do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
