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

defmodule GoogleApi.HealthCare.V1.Model.Hl7V2StoreMetric do
  @moduledoc """
  Count of messages and total storage size by type for a given HL7 store.

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - The total count of HL7v2 messages in the store for the given message type.
  *   `messageType` (*type:* `String.t`, *default:* `nil`) - The Hl7v2 message type this metric applies to, such as `ADT` or `ORU`.
  *   `structuredStorageSizeBytes` (*type:* `String.t`, *default:* `nil`) - The total amount of structured storage used by HL7v2 messages of this message type in the store.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :messageType => String.t() | nil,
          :structuredStorageSizeBytes => String.t() | nil
        }

  field(:count)
  field(:messageType)
  field(:structuredStorageSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.Hl7V2StoreMetric do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.Hl7V2StoreMetric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.Hl7V2StoreMetric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
