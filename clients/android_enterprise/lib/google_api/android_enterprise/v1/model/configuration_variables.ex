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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ConfigurationVariables do
  @moduledoc """
  A configuration variables resource contains the managed configuration settings ID to be applied to a single user, as well as the variable set that is attributed to the user. The variable set will be used to replace placeholders in the managed configuration settings.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "androidenterprise#configurationVariables". Defaults to `androidenterprise#configurationVariables`.
  - mcmId (String.t): The ID of the managed configurations settings. Defaults to `nil`.
  - variableSet (list(GoogleApi.AndroidEnterprise.V1.Model.VariableSet.t)): The variable set that is attributed to the user. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :mcmId => String.t(),
          :variableSet => list(GoogleApi.AndroidEnterprise.V1.Model.VariableSet.t())
        }

  field(:kind)
  field(:mcmId)
  field(:variableSet, as: GoogleApi.AndroidEnterprise.V1.Model.VariableSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ConfigurationVariables do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ConfigurationVariables.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ConfigurationVariables do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
