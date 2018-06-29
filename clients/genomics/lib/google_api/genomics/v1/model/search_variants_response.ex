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

defmodule GoogleApi.Genomics.V1.Model.SearchVariantsResponse do
  @moduledoc """
  The variant search response.

  ## Attributes

  - nextPageToken (String.t): The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. This field will be empty if there aren&#39;t any additional results. Defaults to: `null`.
  - variants ([Variant]): The list of matching Variants. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :variants => list(GoogleApi.Genomics.V1.Model.Variant.t())
        }

  field(:nextPageToken)
  field(:variants, as: GoogleApi.Genomics.V1.Model.Variant, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.SearchVariantsResponse do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.SearchVariantsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.SearchVariantsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
