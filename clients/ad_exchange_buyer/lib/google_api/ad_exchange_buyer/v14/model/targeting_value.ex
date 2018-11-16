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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue do
  @moduledoc """


  ## Attributes

  - creativeSizeValue (TargetingValueCreativeSize): The creative size value to exclude/include. Defaults to: `null`.
  - dayPartTargetingValue (TargetingValueDayPartTargeting): The daypart targeting to include / exclude. Filled in when the key is GOOG_DAYPART_TARGETING. Defaults to: `null`.
  - demogAgeCriteriaValue (TargetingValueDemogAgeCriteria):  Defaults to: `null`.
  - demogGenderCriteriaValue (TargetingValueDemogGenderCriteria):  Defaults to: `null`.
  - longValue (String.t): The long value to exclude/include. Defaults to: `null`.
  - stringValue (String.t): The string value to exclude/include. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeSizeValue => GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueCreativeSize.t(),
          :dayPartTargetingValue =>
            GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueDayPartTargeting.t(),
          :demogAgeCriteriaValue =>
            GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueDemogAgeCriteria.t(),
          :demogGenderCriteriaValue =>
            GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueDemogGenderCriteria.t(),
          :longValue => any(),
          :stringValue => any()
        }

  field(:creativeSizeValue, as: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueCreativeSize)

  field(
    :dayPartTargetingValue,
    as: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueDayPartTargeting
  )

  field(
    :demogAgeCriteriaValue,
    as: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueDemogAgeCriteria
  )

  field(
    :demogGenderCriteriaValue,
    as: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValueDemogGenderCriteria
  )

  field(:longValue)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
