# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Model.ApplicationCategory do
  @moduledoc """
  This is a JSON template for an application category object.

  ## Attributes

  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#applicationCategory. Defaults to `games#applicationCategory`.
  - primary (String.t): The primary category. Defaults to `nil`.
  - secondary (String.t): The secondary category. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :primary => String.t(),
          :secondary => String.t()
        }

  field(:kind)
  field(:primary)
  field(:secondary)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.ApplicationCategory do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.ApplicationCategory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.ApplicationCategory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
