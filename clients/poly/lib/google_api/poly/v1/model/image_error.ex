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

defmodule GoogleApi.Poly.V1.Model.ImageError do
  @moduledoc """
  A message resulting from reading an image file.

  ## Attributes

  - code (String.t): The type of image error encountered. Optional for older image errors. Defaults to: `null`.
    - Enum - one of [CODE_UNSPECIFIED, INVALID_IMAGE, IMAGE_TOO_BIG, WRONG_IMAGE_TYPE]
  - filePath (String.t): The file path in the import of the image that was rejected. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => any(),
          :filePath => any()
        }

  field(:code)
  field(:filePath)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.ImageError do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.ImageError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.ImageError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
