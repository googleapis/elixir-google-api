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

defmodule GoogleApi.Vision.V1.Model.Product do
  @moduledoc """
  A Product contains ReferenceImages.

  ## Attributes

  - description (String.t): User-provided metadata to be stored with this product. Must be at most 4096 characters long. Defaults to: `null`.
  - displayName (String.t): The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long. Defaults to: `null`.
  - name (String.t): The resource name of the product.  Format is: &#x60;projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID&#x60;.  This field is ignored when creating a product. Defaults to: `null`.
  - productCategory (String.t): The category for the product identified by the reference image. This should be either \&quot;homegoods\&quot;, \&quot;apparel\&quot;, or \&quot;toys\&quot;.  This field is immutable. Defaults to: `null`.
  - productLabels ([KeyValue]): Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels.  Note that integer values can be provided as strings, e.g. \&quot;1199\&quot;. Only strings with integer values can match a range-based restriction which is to be supported soon.  Multiple values can be assigned to the same key. One product may have up to 100 product_labels. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :displayName => any(),
          :name => any(),
          :productCategory => any(),
          :productLabels => list(GoogleApi.Vision.V1.Model.KeyValue.t())
        }

  field(:description)
  field(:displayName)
  field(:name)
  field(:productCategory)
  field(:productLabels, as: GoogleApi.Vision.V1.Model.KeyValue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.Product do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
