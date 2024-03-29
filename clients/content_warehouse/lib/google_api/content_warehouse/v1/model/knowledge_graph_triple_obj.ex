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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObj do
  @moduledoc """


  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - 
  *   `datetimeValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto.t`, *default:* `nil`) - 
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - 
  *   `durationValue` (*type:* `String.t`, *default:* `nil`) - seconds
  *   `idValue` (*type:* `String.t`, *default:* `nil`) - An id representing an entity (mid or hrid)
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - 
  *   `locale` (*type:* `String.t`, *default:* `nil`) - The language code for the object value. It must be a BCP 47-compliant language tag (b/10005172). See also go/kg-data-l10n.
  *   `nestedStructValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphNestedStruct.t`, *default:* `nil`) - 
  *   `protoValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObjProto.t`, *default:* `nil`) - 
  *   `s2cellId` (*type:* `String.t`, *default:* `nil`) - 
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - A UTF-8 string value to be used for the following expected schema types: - /type/rawstring - /type/text - /type/key
  *   `uint64Value` (*type:* `String.t`, *default:* `nil`) - 
  *   `uriValue` (*type:* `String.t`, *default:* `nil`) - A UTF-8 string value to be used for expected type /type/uri - b/68760994.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :datetimeValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto.t() | nil,
          :doubleValue => float() | nil,
          :durationValue => String.t() | nil,
          :idValue => String.t() | nil,
          :int64Value => String.t() | nil,
          :locale => String.t() | nil,
          :nestedStructValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphNestedStruct.t() | nil,
          :protoValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObjProto.t() | nil,
          :s2cellId => String.t() | nil,
          :stringValue => String.t() | nil,
          :uint64Value => String.t() | nil,
          :uriValue => String.t() | nil
        }

  field(:boolValue)
  field(:datetimeValue, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto)
  field(:doubleValue)
  field(:durationValue)
  field(:idValue)
  field(:int64Value)
  field(:locale)
  field(:nestedStructValue, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphNestedStruct)
  field(:protoValue, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObjProto)
  field(:s2cellId)
  field(:stringValue)
  field(:uint64Value)
  field(:uriValue)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObj do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObj.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphTripleObj do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
