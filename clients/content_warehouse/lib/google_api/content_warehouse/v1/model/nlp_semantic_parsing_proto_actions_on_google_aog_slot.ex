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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot do
  @moduledoc """
  In simple cases, each NLU slot will contain one or multiple possible values. But in the case of a composite entity - slots can have a complex tree structure. Each slot can represent a List parameter. List parameters are only allowed at the top level, i.e. lists can't ne nested in maps. Next Id: 9 LINT.IfChange

  ## Attributes

  *   `entityId` (*type:* `String.t`, *default:* `nil`) - ID of the entity of this slot.
  *   `numBytes` (*type:* `integer()`, *default:* `nil`) - Number of bytes of this slot in resolved query.
  *   `original` (*type:* `String.t`, *default:* `nil`) - Part of input text, matched by that slot. In the case of composite slots, each slot should have its own original.
  *   `parameterName` (*type:* `String.t`, *default:* `nil`) - Name of parameter of this slot.
  *   `slotList` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotList.t`, *default:* `nil`) - Represents a "list parameter". Each parameter may be declared as a list and have multiple slot values, referenced by a single alias. Each slot value in a list may contain multiple possible values. For example: aqua return 3 dates if the year is not specified in a query - one for the current year, one for the past year, and one for the following year. If user defines a list parameter with type @sys.date, and the query contains multiple dates - we should return a list of possible values for each date from the query, i.e. it will be a list of list of dates.
  *   `slotMap` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotMap.t`, *default:* `nil`) - Represents a structured value. Used in composite entities. Composite entities can have arbitrary structure.
  *   `startByte` (*type:* `integer()`, *default:* `nil`) - Start byte position of this slot in resolved query.
  *   `value` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValue.t`, *default:* `nil`) - One or more possible values. This field does not represent a list parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityId => String.t() | nil,
          :numBytes => integer() | nil,
          :original => String.t() | nil,
          :parameterName => String.t() | nil,
          :slotList =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotList.t()
            | nil,
          :slotMap =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotMap.t()
            | nil,
          :startByte => integer() | nil,
          :value =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValue.t()
            | nil
        }

  field(:entityId)
  field(:numBytes)
  field(:original)
  field(:parameterName)

  field(:slotList,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotList
  )

  field(:slotMap,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotMap
  )

  field(:startByte)

  field(:value,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValue
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end