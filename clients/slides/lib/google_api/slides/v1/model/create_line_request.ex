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

defmodule GoogleApi.Slides.V1.Model.CreateLineRequest do
  @moduledoc """
  Creates a line.

  ## Attributes

  - category (String.t): The category of the line to be created.  The exact line type created is determined based on the category and how it&#39;s routed to connect to other page elements.  If you specify both a &#x60;category&#x60; and a &#x60;line_category&#x60;, the &#x60;category&#x60; takes precedence.  If you do not specify a value for &#x60;category&#x60;, but specify a value for &#x60;line_category&#x60;, then the specified &#x60;line_category&#x60; value is used.  If you do not specify either, then STRAIGHT is used. Defaults to: `null`.
    - Enum - one of [LINE_CATEGORY_UNSPECIFIED, STRAIGHT, BENT, CURVED]
  - elementProperties (PageElementProperties): The element properties for the line. Defaults to: `null`.
  - lineCategory (String.t): The category of the line to be created.  &lt;b&gt;Deprecated&lt;/b&gt;: use &#x60;category&#x60; instead.  The exact line type created is determined based on the category and how it&#39;s routed to connect to other page elements.  If you specify both a &#x60;category&#x60; and a &#x60;line_category&#x60;, the &#x60;category&#x60; takes precedence. Defaults to: `null`.
    - Enum - one of [STRAIGHT, BENT, CURVED]
  - objectId (String.t): A user-supplied object ID.  If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex &#x60;[a-zA-Z0-9_]&#x60;); remaining characters may include those as well as a hyphen or colon (matches regex &#x60;[a-zA-Z0-9_-:]&#x60;). The length of the ID must not be less than 5 or greater than 50.  If you don&#39;t specify an ID, a unique one is generated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => any(),
          :elementProperties => GoogleApi.Slides.V1.Model.PageElementProperties.t(),
          :lineCategory => any(),
          :objectId => any()
        }

  field(:category)
  field(:elementProperties, as: GoogleApi.Slides.V1.Model.PageElementProperties)
  field(:lineCategory)
  field(:objectId)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CreateLineRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.CreateLineRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.CreateLineRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
