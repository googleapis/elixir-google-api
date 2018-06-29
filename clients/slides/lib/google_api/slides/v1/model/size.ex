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

defmodule GoogleApi.Slides.V1.Model.Size do
  @moduledoc """
  A width and height.

  ## Attributes

  - height (Dimension): The height of the object. Defaults to: `null`.
  - width (Dimension): The width of the object. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => GoogleApi.Slides.V1.Model.Dimension.t(),
          :width => GoogleApi.Slides.V1.Model.Dimension.t()
        }

  field(:height, as: GoogleApi.Slides.V1.Model.Dimension)
  field(:width, as: GoogleApi.Slides.V1.Model.Dimension)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Size do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Size.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Size do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
