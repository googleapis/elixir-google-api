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

defmodule GoogleApi.Analytics.V3.Model.GoalEventDetails do
  @moduledoc """
  Details for the goal of the type EVENT.

  ## Attributes

  - eventConditions ([GoalEventDetailsEventConditions]): List of event conditions. Defaults to: `null`.
  - useEventValue (boolean()): Determines if the event value should be used as the value for this goal. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventConditions =>
            list(GoogleApi.Analytics.V3.Model.GoalEventDetailsEventConditions.t()),
          :useEventValue => any()
        }

  field(
    :eventConditions,
    as: GoogleApi.Analytics.V3.Model.GoalEventDetailsEventConditions,
    type: :list
  )

  field(:useEventValue)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GoalEventDetails do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GoalEventDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GoalEventDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
