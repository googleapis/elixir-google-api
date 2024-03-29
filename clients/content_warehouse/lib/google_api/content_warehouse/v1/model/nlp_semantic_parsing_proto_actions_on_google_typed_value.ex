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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue do
  @moduledoc """
  Used by on-device Heron. Contains information about the type of slot value returned.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Represents a boolean value.
  *   `dateTimeValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTime.t`, *default:* `nil`) - Represents date or time.
  *   `numberValue` (*type:* `float()`, *default:* `nil`) - Represents number value. In accordance to ParamValue fields(https://source.corp.google.com/piper///depot/google3/third_party/java_src/appactions/proto/app_actions_data.proto;rcl=431529042;l=12)
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Represents a string value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :dateTimeValue =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTime.t()
            | nil,
          :numberValue => float() | nil,
          :stringValue => String.t() | nil
        }

  field(:boolValue)

  field(:dateTimeValue,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleDateTime
  )

  field(:numberValue)
  field(:stringValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleTypedValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
