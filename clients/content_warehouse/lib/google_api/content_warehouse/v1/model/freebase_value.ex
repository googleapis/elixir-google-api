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

defmodule GoogleApi.ContentWarehouse.V1.Model.FreebaseValue do
  @moduledoc """
  Values are effectively a union of several possible Knowledge Graph types: simple primitive datatypes such as booleans, integers and floats, references to other Knowledge Graph topics (by id), or "compound values" which are expressed as embedded topics with associated properties and values. Values occur in indexed order (if any).

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Present when value is bool.
  *   `citation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseCitation.t`, *default:* `nil`) - Citation data for this value. See: http://go/kg-clap
  *   `compoundValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseTopic.t`, *default:* `nil`) - Compound values are those that contain either a number of simple valued facets (such as a latitude/longitude pair), or "mediator" topics representing multi-dimensional relationships between topics. In both cases we represent them here with an embedded topic, although the topic's identity is somewhat secondary to the property/value pairs it contains. (The identity is still made available so that it can be used to perform updates to that mediator on the Knowledge Graph.)
  *   `deletionProvenance` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgTripleProvenance.t)`, *default:* `nil`) - Deletion provenance for this value.
  *   `displayLang` (*type:* `String.t`, *default:* `nil`) - The lang of the display_value field.
  *   `displayValue` (*type:* `String.t`, *default:* `nil`) - The display value of this value. This is a i18n-aware formatted value if present.
  *   `expectedProto` (*type:* `String.t`, *default:* `nil`) - An optional name for a proto field.
  *   `floatValue` (*type:* `float()`, *default:* `nil`) - Present when value is float.
  *   `idValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseId.t`, *default:* `nil`) - Present when value is an id.
  *   `index` (*type:* `String.t`, *default:* `nil`) - Index of the value relative to the containing property (if any). Knowledge Graph supports a loose notion of indexing: some non-unique properties may have indices, while others may not. Furthermore, for a single property, some values may have indices (such as the top 5 actors in a film), while others may not (the film's supporting cast). Un-indexed values will appear at the end of the repeated value list. This field contains the index value only when is present in the Knowledge Graph.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Present when value is int.
  *   `lang` (*type:* `String.t`, *default:* `nil`) - Whenever the value is text with TYPE_TEXT, the lang field is populated with the III LanguageCode associated with the string_value field.
  *   `latLongValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseLatLong.t`, *default:* `nil`) - 
  *   `measurementValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseMeasurement.t`, *default:* `nil`) - 
  *   `nestedStruct` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FreebaseNestedStruct.t`, *default:* `nil`) - Populated if this value holds NestedStruct. 'type' field needs to be set to TYPE_NESTED_STRUCT.
  *   `provenance` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgTripleProvenance.t)`, *default:* `nil`) - Provenance for this value.
  *   `rawValue` (*type:* `String.t`, *default:* `nil`) - Similar to string_value/etc but contains raw bytes.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Present when value is text, enum,
  *   `subgraphId` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - The ISO-8601 timestamp corresponding to when this value was created (when it was written to the Knowledge Graph). Deprecated in favor of timestamp_usec.
  *   `timestampUsec` (*type:* `String.t`, *default:* `nil`) - The microsecond timestamp corresponding to when this value was created.
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :citation => GoogleApi.ContentWarehouse.V1.Model.FreebaseCitation.t() | nil,
          :compoundValue => GoogleApi.ContentWarehouse.V1.Model.FreebaseTopic.t() | nil,
          :deletionProvenance =>
            list(GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgTripleProvenance.t()) | nil,
          :displayLang => String.t() | nil,
          :displayValue => String.t() | nil,
          :expectedProto => String.t() | nil,
          :floatValue => float() | nil,
          :idValue => GoogleApi.ContentWarehouse.V1.Model.FreebaseId.t() | nil,
          :index => String.t() | nil,
          :intValue => String.t() | nil,
          :lang => String.t() | nil,
          :latLongValue => GoogleApi.ContentWarehouse.V1.Model.FreebaseLatLong.t() | nil,
          :measurementValue => GoogleApi.ContentWarehouse.V1.Model.FreebaseMeasurement.t() | nil,
          :nestedStruct => GoogleApi.ContentWarehouse.V1.Model.FreebaseNestedStruct.t() | nil,
          :provenance =>
            list(GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgTripleProvenance.t()) | nil,
          :rawValue => String.t() | nil,
          :stringValue => String.t() | nil,
          :subgraphId => list(String.t()) | nil,
          :timestamp => String.t() | nil,
          :timestampUsec => String.t() | nil,
          :type => String.t() | nil
        }

  field(:boolValue)
  field(:citation, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseCitation)
  field(:compoundValue, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseTopic)

  field(:deletionProvenance,
    as: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgTripleProvenance,
    type: :list
  )

  field(:displayLang)
  field(:displayValue)
  field(:expectedProto)
  field(:floatValue)
  field(:idValue, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseId)
  field(:index)
  field(:intValue)
  field(:lang)
  field(:latLongValue, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseLatLong)
  field(:measurementValue, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseMeasurement)
  field(:nestedStruct, as: GoogleApi.ContentWarehouse.V1.Model.FreebaseNestedStruct)

  field(:provenance,
    as: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgTripleProvenance,
    type: :list
  )

  field(:rawValue)
  field(:stringValue)
  field(:subgraphId, type: :list)
  field(:timestamp)
  field(:timestampUsec)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FreebaseValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FreebaseValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FreebaseValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
