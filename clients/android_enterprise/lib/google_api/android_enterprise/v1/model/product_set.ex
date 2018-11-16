# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductSet do
  @moduledoc """
  A set of products.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#productSet\&quot;. Defaults to: `null`.
  - productId ([String.t]): The list of product IDs making up the set of products. Defaults to: `null`.
  - productSetBehavior (String.t): The interpretation of this product set. \&quot;unknown\&quot; should never be sent and is ignored if received. \&quot;whitelist\&quot; means that the user is entitled to access the product set. \&quot;includeAll\&quot; means that all products are accessible, including products that are approved, products with revoked approval, and products that have never been approved. \&quot;allApproved\&quot; means that the user is entitled to access all products that are approved for the enterprise. If the value is \&quot;allApproved\&quot; or \&quot;includeAll\&quot;, the productId field is ignored. If no value is provided, it is interpreted as \&quot;whitelist\&quot; for backwards compatibility. Further \&quot;allApproved\&quot; or \&quot;includeAll\&quot; does not enable automatic visibility of \&quot;alpha\&quot; or \&quot;beta\&quot; tracks for Android app. Use ProductVisibility to enable \&quot;alpha\&quot; or \&quot;beta\&quot; tracks per user. Defaults to: `null`.
  - productVisibility ([ProductVisibility]): Additional list of product IDs making up the product set. Unlike the productID array, in this list It&#39;s possible to specify which tracks (alpha, beta, production) of a product are visible to the user. See ProductVisibility and its fields for more information. Specifying the same product ID both here and in the productId array is not allowed and it will result in an error. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :productId => list(any()),
          :productSetBehavior => any(),
          :productVisibility => list(GoogleApi.AndroidEnterprise.V1.Model.ProductVisibility.t())
        }

  field(:kind)
  field(:productId, type: :list)
  field(:productSetBehavior)

  field(:productVisibility,
    as: GoogleApi.AndroidEnterprise.V1.Model.ProductVisibility,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductSet do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ProductSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
