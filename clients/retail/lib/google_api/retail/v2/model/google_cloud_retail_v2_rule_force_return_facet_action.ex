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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetAction do
  @moduledoc """
  Force returns an attribute/facet in the request around a certain position or above. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Inputs: attribute name, position * Action Result: Will force return a facet key around a certain position or above if the condition is satisfied. Example: Suppose the query is "shoes", the Condition.query_terms is "shoes", the ForceReturnFacetAction.FacetPositionAdjustment.attribute_name is "size" and the ForceReturnFacetAction.FacetPositionAdjustment.position is 8. Two cases: a) The facet key "size" is not already in the top 8 slots, then the facet "size" will appear at a position close to 8. b) The facet key "size" in among the top 8 positions in the request, then it will stay at its current rank.

  ## Attributes

  *   `facetPositionAdjustments` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment.t)`, *default:* `nil`) - Each instance corresponds to a force return attribute for the given condition. There can't be more 15 instances here.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :facetPositionAdjustments =>
            list(
              GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment.t()
            )
            | nil
        }

  field(:facetPositionAdjustments,
    as:
      GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetAction do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetAction.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleForceReturnFacetAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
