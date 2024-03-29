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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeProto do
  @moduledoc """
  Protocol buffer for attaching attributes and values to instances. This is for assigning a particular attribute and value to a repository item, not for metadata. For protocol buffers that represents metadata about attributes and values, see CanonicalAttribute in itemclass.proto and ValueSpace in valuespace.proto.

  ## Attributes

  *   `applicationData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - 
  *   `attributeDisplay` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeValueDisplayProto.t)`, *default:* `nil`) - 
  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - 
  *   `canonicalAttributeId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto.t`, *default:* `nil`) - The canonical attribute for this attribute instance.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - 
  *   `enumIdValue` (*type:* `String.t`, *default:* `nil`) - For those attribute ids that expect their values to be taken from an enumeration-style set of values, that value's gcid should be stored here, e.g. "gcid:attval_yes".
  *   `floatValue` (*type:* `number()`, *default:* `nil`) - 
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - 
  *   `integerValue` (*type:* `integer()`, *default:* `nil`) - 
  *   `itemClassId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto.t`, *default:* `nil`) - 
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t`, *default:* `nil`) - Field-level metadata for this attribute
  *   `protoValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Fully qualified package name because genprotohdf uses genproto for this proto2 syntax: https://wiki.corp.google.com/twiki/bin/view/Main/Proto2WithGenproto
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - The attribute value falls into one of these fields, based on value_type:
  *   `uint32Value` (*type:* `integer()`, *default:* `nil`) - 
  *   `valueDisplay` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeValueDisplayProto.t)`, *default:* `nil`) - Used to store language-specific names of this attribute's value (e.g. a translation into another language).
  *   `valueSpaceId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto.t`, *default:* `nil`) - 
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationData =>
            GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :attributeDisplay =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeValueDisplayProto.t()) | nil,
          :booleanValue => boolean() | nil,
          :canonicalAttributeId =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto.t() | nil,
          :doubleValue => float() | nil,
          :enumIdValue => String.t() | nil,
          :floatValue => number() | nil,
          :int64Value => String.t() | nil,
          :integerValue => integer() | nil,
          :itemClassId => GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto.t() | nil,
          :metadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t() | nil,
          :protoValue => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :stringValue => String.t() | nil,
          :uint32Value => integer() | nil,
          :valueDisplay =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeValueDisplayProto.t()) | nil,
          :valueSpaceId => GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto.t() | nil,
          :valueType => String.t() | nil
        }

  field(:applicationData, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)

  field(:attributeDisplay,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeValueDisplayProto,
    type: :list
  )

  field(:booleanValue)
  field(:canonicalAttributeId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto)
  field(:doubleValue)
  field(:enumIdValue)
  field(:floatValue)
  field(:int64Value)
  field(:integerValue)
  field(:itemClassId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto)
  field(:protoValue, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:stringValue)
  field(:uint32Value)

  field(:valueDisplay,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeValueDisplayProto,
    type: :list
  )

  field(:valueSpaceId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeIdProto)
  field(:valueType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreAttributeProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
