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

defmodule GoogleApi.Vision.V1.Model.Feature do
  @moduledoc """
  The type of Google Cloud Vision API detection to perform, and the maximum number of results to return for that type. Multiple &#x60;Feature&#x60; objects can be specified in the &#x60;features&#x60; list.

  ## Attributes

  - maxResults (integer()): Maximum number of results of this type. Does not apply to &#x60;TEXT_DETECTION&#x60;, &#x60;DOCUMENT_TEXT_DETECTION&#x60;, or &#x60;CROP_HINTS&#x60;. Defaults to: `null`.
  - model (String.t): Model to use for the feature. Supported values: \&quot;builtin/stable\&quot; (the default if unset) and \&quot;builtin/latest\&quot;. Defaults to: `null`.
  - type (String.t): The feature type. Defaults to: `null`.
    - Enum - one of [TYPE_UNSPECIFIED, FACE_DETECTION, LANDMARK_DETECTION, LOGO_DETECTION, LABEL_DETECTION, TEXT_DETECTION, DOCUMENT_TEXT_DETECTION, SAFE_SEARCH_DETECTION, IMAGE_PROPERTIES, CROP_HINTS, WEB_DETECTION, PRODUCT_SEARCH, OBJECT_LOCALIZATION]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxResults => any(),
          :model => any(),
          :type => any()
        }

  field(:maxResults)
  field(:model)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.Feature do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.Feature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.Feature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
