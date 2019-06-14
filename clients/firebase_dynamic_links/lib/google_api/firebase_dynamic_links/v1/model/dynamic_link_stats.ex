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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkStats do
  @moduledoc """
  Analytics stats of a Dynamic Link for a given timeframe.

  ## Attributes

  - linkEventStats (list(GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat.t)): Dynamic Link event stats. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :linkEventStats =>
            list(GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat.t())
        }

  field(
    :linkEventStats,
    as: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkStats do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
