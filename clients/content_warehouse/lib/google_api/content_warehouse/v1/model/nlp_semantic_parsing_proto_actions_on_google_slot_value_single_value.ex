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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValueSingleValue do
  @moduledoc """
  Represents an actual value.

  ## Attributes

  *   `dateTimeValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTime.t`, *default:* `nil`) - Represents date or time.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Represents a string value.
  *   `typeValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue.t`, *default:* `nil`) - This field is only populated by on-device Heron. This field should not be populated by any other service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateTimeValue =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTime.t()
            | nil,
          :stringValue => String.t() | nil,
          :typeValue =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue.t()
            | nil
        }

  field(:dateTimeValue,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTime
  )

  field(:stringValue)

  field(:typeValue,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValueSingleValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValueSingleValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleSlotValueSingleValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
