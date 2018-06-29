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

defmodule GoogleApi.AndroidEnterprise.V1.Model.VariableSet do
  @moduledoc """
  A variable set is a key-value pair of EMM-provided placeholders and its corresponding value, which is attributed to a user. For example, $FIRSTNAME could be a placeholder, and its value could be Alice. Placeholders should start with a &#39;$&#39; sign and should be alphanumeric only.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#variableSet\&quot;. Defaults to: `null`.
  - placeholder (String.t): The placeholder string; defined by EMM. Defaults to: `null`.
  - userValue (String.t): The value of the placeholder, specific to the user. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :placeholder => any(),
          :userValue => any()
        }

  field(:kind)
  field(:placeholder)
  field(:userValue)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.VariableSet do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.VariableSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.VariableSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
