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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange do
  @moduledoc """
  Range has 4 use cases: 1. with an explicit begin and an explicit end, e.g. "from Monday to Wednesday." Both |begin| and |end| are filled in this case. 2. a point date/time expression is used as a range at a finer granularity. E.g., in "first Monday of this month", "this month" is used as a range. In this case, only |begin| will be filled and the |end| will be filled during the grounding process. 3. a fuzzy date/time range such as "morning" or "evening." 4. with a relative begin and a relative end, e.g. "from yesterday to next Monday." Note: this may be used in a mixture of exact/relative begin and end. Next available ID: 14.

  ## Attributes

  *   `begin` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t`, *default:* `nil`) - Deprecated fields. Do NOT use.
  *   `beginRelative` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t`, *default:* `nil`) - 
  *   `duration` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity.t`, *default:* `nil`) - if |duration| is set, one field from start or finish must be populated, but not both. |exclusive| value is still relevant to decide if the endpoints of the range are included in the range (value defined in the start/finish fields as well as the datetime value resulting of offseting the duration over the given range endpoint).
  *   `end` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t`, *default:* `nil`) - 
  *   `endRelative` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t`, *default:* `nil`) - 
  *   `exclusive` (*type:* `boolean()`, *default:* `nil`) - 
  *   `finish` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t`, *default:* `nil`) - 
  *   `fuzzyRange` (*type:* `String.t`, *default:* `nil`) - 
  *   `metadata` (*type:* `String.t`, *default:* `nil`) - 
  *   `properties` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeResolutionProperties.t`, *default:* `nil`) - 
  *   `rangeModifier` (*type:* `String.t`, *default:* `nil`) - Modifier that return the appropriate subrange. For more information, see the description of RangeOfDateTimeModifier. Example: * *late* morning
  *   `start` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t`, *default:* `nil`) - |start| and |finish| are inclusive unless exclusive field is true. the values in start and finish can be an absolute point, a relative or another range. Recurrences and repeated values are not expected/allowed.
  *   `symbolicValue` (*type:* `String.t`, *default:* `nil`) - The field is set if the range is the result of resolving/grounding a relative datetime expression referring to a part of the day. E.g. "morning", "afternoon", "evening", "night", "tonight", etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :begin =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t()
            | nil,
          :beginRelative =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t()
            | nil,
          :duration =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity.t() | nil,
          :end =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t()
            | nil,
          :endRelative =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t()
            | nil,
          :exclusive => boolean() | nil,
          :finish =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t() | nil,
          :fuzzyRange => String.t() | nil,
          :metadata => String.t() | nil,
          :properties =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeResolutionProperties.t()
            | nil,
          :rangeModifier => String.t() | nil,
          :start =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t() | nil,
          :symbolicValue => String.t() | nil
        }

  field(:begin, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime)

  field(:beginRelative,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime
  )

  field(:duration, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity)
  field(:end, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime)

  field(:endRelative,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime
  )

  field(:exclusive)
  field(:finish, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime)
  field(:fuzzyRange)
  field(:metadata)

  field(:properties,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeResolutionProperties
  )

  field(:rangeModifier)
  field(:start, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime)
  field(:symbolicValue)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
