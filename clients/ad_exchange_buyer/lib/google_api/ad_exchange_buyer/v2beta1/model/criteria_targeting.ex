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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting do
  @moduledoc """
  Generic targeting used for targeting dimensions that contains a list of
  included and excluded numeric IDs.

  ## Attributes

  *   `excludedCriteriaIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of numeric IDs to be excluded.
  *   `targetedCriteriaIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of numeric IDs to be included.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedCriteriaIds => list(String.t()),
          :targetedCriteriaIds => list(String.t())
        }

  field(:excludedCriteriaIds, type: :list)
  field(:targetedCriteriaIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.CriteriaTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
