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

defmodule GoogleApi.CloudSearch.V1.Model.QueryOperator do
  @moduledoc """
  The definition of a operator that can be used in a Search/Suggest request.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the operator
  *   `enumValues` (*type:* `list(String.t)`, *default:* `nil`) - Potential list of values for the opeatror field. This field is only filled when we can safely enumerate all the possible values of this operator.
  *   `greaterThanOperatorName` (*type:* `String.t`, *default:* `nil`) - Indicates the operator name that can be used to isolate the property using the greater-than operator.
  *   `isFacetable` (*type:* `boolean()`, *default:* `nil`) - Can this operator be used to get facets.
  *   `isRepeatable` (*type:* `boolean()`, *default:* `nil`) - Indicates if multiple values can be set for this property.
  *   `isReturnable` (*type:* `boolean()`, *default:* `nil`) - Will the property associated with this facet be returned as part of search results.
  *   `isSortable` (*type:* `boolean()`, *default:* `nil`) - Can this operator be used to sort results.
  *   `isSuggestable` (*type:* `boolean()`, *default:* `nil`) - Can get suggestions for this field.
  *   `lessThanOperatorName` (*type:* `String.t`, *default:* `nil`) - Indicates the operator name that can be used to isolate the property using the less-than operator.
  *   `objectType` (*type:* `String.t`, *default:* `nil`) - The name of the object corresponding to the operator. This field is only filled for schema-specific operators, and is unset for common operators.
  *   `operatorName` (*type:* `String.t`, *default:* `nil`) - The name of the operator.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the operator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :enumValues => list(String.t()) | nil,
          :greaterThanOperatorName => String.t() | nil,
          :isFacetable => boolean() | nil,
          :isRepeatable => boolean() | nil,
          :isReturnable => boolean() | nil,
          :isSortable => boolean() | nil,
          :isSuggestable => boolean() | nil,
          :lessThanOperatorName => String.t() | nil,
          :objectType => String.t() | nil,
          :operatorName => String.t() | nil,
          :type => String.t() | nil
        }

  field(:displayName)
  field(:enumValues, type: :list)
  field(:greaterThanOperatorName)
  field(:isFacetable)
  field(:isRepeatable)
  field(:isReturnable)
  field(:isSortable)
  field(:isSuggestable)
  field(:lessThanOperatorName)
  field(:objectType)
  field(:operatorName)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.QueryOperator do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.QueryOperator.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.QueryOperator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
