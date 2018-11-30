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

defmodule GoogleApi.Discovery.V1.Model.RestMethodRequest do
  @moduledoc """
  The schema for the request.

  ## Attributes

  - $ref (String.t): Schema ID for the request schema. Defaults to: `null`.
  - parameterName (String.t): parameter name. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :"$ref" => any(),
          :parameterName => any()
        }

  field(:"$ref")
  field(:parameterName)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.RestMethodRequest do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.RestMethodRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.RestMethodRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
