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

defmodule GoogleApi.ContentWarehouse.V1.Model.RichsnippetsDataObjectAttribute do
  @moduledoc """
  Other attributes of the object.

  ## Attributes

  *   `cdata` (*type:* `String.t`, *default:* `nil`) - 
  *   `idata` (*type:* `String.t`, *default:* `nil`) - idata holds integer data under the attribute name, and could be interpreted differently according to the attribute name. Example: stores the ImadeData.docid used to generate thumbnails. idata will not be automatically converted into xml (the default behavior), but the behavior can be overwritten if necessary.
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `subobject` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - A data object can have other data objects nested inside it. This is needed to represent Microformats and RDFa which have nestings e.g., a review with a business with an address, or a review with a rating object. See the Webmaster Central 2009/05 blog on "Introducing Rich Snippets".
  *   `tokenize` (*type:* `boolean()`, *default:* `nil`) - Whether we should tokenize the value and cdata when generating restricts from this attribute.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Either of cdata or value should be present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cdata => String.t() | nil,
          :idata => String.t() | nil,
          :name => String.t() | nil,
          :subobject => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :tokenize => boolean() | nil,
          :value => String.t() | nil
        }

  field(:cdata)
  field(:idata)
  field(:name)
  field(:subobject, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:tokenize)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RichsnippetsDataObjectAttribute do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RichsnippetsDataObjectAttribute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RichsnippetsDataObjectAttribute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
