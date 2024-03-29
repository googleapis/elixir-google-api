# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType do
  @moduledoc """
  A DateType configures a value whose type is intended to be a date. LINT.IfChange Next id: 17

  ## Attributes

  *   `allowAllRangeResolutions` (*type:* `boolean()`, *default:* `nil`) - If true, will allow all resolutions that are ranges.
  *   `allowAllResolutions` (*type:* `boolean()`, *default:* `nil`) - If true, overrides all other options in this message and allows any kind of DateTime annotation.
  *   `allowAllResolutionsExceptHolidays` (*type:* `boolean()`, *default:* `nil`) - If true, will allow all resolutions except holidays.
  *   `allowAllResolutionsWithout4digit24hrTime` (*type:* `boolean()`, *default:* `nil`) - If true, will allow resolutions that aren't contiguous sequences of 4 digits annotated as 24-hr times. These are often mis-interpreted years or postcodes.
  *   `allowAllResolutionsWithoutTime` (*type:* `boolean()`, *default:* `nil`) - If true, will allow resolutions without an explicit hour. Symbolic ranges such as [this evening] are not considered as explicit hour, but the range [1-3pm] is considered as explicit.
  *   `allowDayResolution` (*type:* `boolean()`, *default:* `nil`) - If true, will parse a mention to DateTime of resolution day. This allows parsing strings like "August 30th", "2012-12-25";
  *   `allowDayResolutionExceptHolidaysOrOrdinal` (*type:* `boolean()`, *default:* `nil`) - If true, will allow day resolutions except holidays or ordinal numbers, such as "today", "December 13", but "Christmas", "first" are not allowed.
  *   `allowHourResolution` (*type:* `boolean()`, *default:* `nil`) - If true, will allow resolutions with an explicit hour such as "8am", "5pm".
  *   `allowMonthResolution` (*type:* `boolean()`, *default:* `nil`) - If true, will parse a mention to DateTime of resolution month. This allows parsing strings like "this August", "2012-12";
  *   `allowNowResolution` (*type:* `boolean()`, *default:* `nil`) - If true, will allow "now" resolutions, but not any other time
  *   `allowSymbolicTime` (*type:* `boolean()`, *default:* `nil`) - If true, will allow symbolic time resolutions such as "tonight".
  *   `allowTimeResolutionsWithoutExplicitTimezone` (*type:* `boolean()`, *default:* `nil`) - If true, will allow time resolutions without an explicit timezone.
  *   `allowYearResolution` (*type:* `boolean()`, *default:* `nil`) - If true, will parse a mention to DateTime of resolution year. This allows parsing strings like "Next year ", "2010";
  *   `componentSpecificContracts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.t`, *default:* `nil`) - Contains data about the contracts that this ValueType level is available for. For more information see go/contract-based-conformance.
  *   `remodelings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings.t`, *default:* `nil`) - Contains data about current schema remodelings at this ValueType level. For more information see go/meaning-remodeling-framework.
  *   `subType` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowAllRangeResolutions => boolean() | nil,
          :allowAllResolutions => boolean() | nil,
          :allowAllResolutionsExceptHolidays => boolean() | nil,
          :allowAllResolutionsWithout4digit24hrTime => boolean() | nil,
          :allowAllResolutionsWithoutTime => boolean() | nil,
          :allowDayResolution => boolean() | nil,
          :allowDayResolutionExceptHolidaysOrOrdinal => boolean() | nil,
          :allowHourResolution => boolean() | nil,
          :allowMonthResolution => boolean() | nil,
          :allowNowResolution => boolean() | nil,
          :allowSymbolicTime => boolean() | nil,
          :allowTimeResolutionsWithoutExplicitTimezone => boolean() | nil,
          :allowYearResolution => boolean() | nil,
          :componentSpecificContracts =>
            GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.t() | nil,
          :remodelings =>
            GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings.t() | nil,
          :subType => String.t() | nil
        }

  field(:allowAllRangeResolutions)
  field(:allowAllResolutions)
  field(:allowAllResolutionsExceptHolidays)
  field(:allowAllResolutionsWithout4digit24hrTime)
  field(:allowAllResolutionsWithoutTime)
  field(:allowDayResolution)
  field(:allowDayResolutionExceptHolidaysOrOrdinal)
  field(:allowHourResolution)
  field(:allowMonthResolution)
  field(:allowNowResolution)
  field(:allowSymbolicTime)
  field(:allowTimeResolutionsWithoutExplicitTimezone)
  field(:allowYearResolution)

  field(:componentSpecificContracts,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts
  )

  field(:remodelings, as: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings)
  field(:subType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
