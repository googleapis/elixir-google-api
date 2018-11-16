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

defmodule GoogleApi.DFAReporting.V28.Model.ListPopulationRule do
  @moduledoc """
  Remarketing List Population Rule.

  ## Attributes

  - floodlightActivityId (String.t): Floodlight activity ID associated with this rule. This field can be left blank. Defaults to: `null`.
  - floodlightActivityName (String.t): Name of floodlight activity associated with this rule. This is a read-only, auto-generated field. Defaults to: `null`.
  - listPopulationClauses ([ListPopulationClause]): Clauses that make up this list population rule. Clauses are joined by ANDs, and the clauses themselves are made up of list population terms which are joined by ORs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :floodlightActivityId => any(),
          :floodlightActivityName => any(),
          :listPopulationClauses =>
            list(GoogleApi.DFAReporting.V28.Model.ListPopulationClause.t())
        }

  field(:floodlightActivityId)
  field(:floodlightActivityName)

  field(:listPopulationClauses,
    as: GoogleApi.DFAReporting.V28.Model.ListPopulationClause,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ListPopulationRule do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ListPopulationRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ListPopulationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
