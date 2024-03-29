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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue do
  @moduledoc """
  Analog to freebase::Value TODO(b/144526840) This representation has several quality and performance issues. Next available tag number: 12

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Present when value is bool.
  *   `compoundValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgTopic.t`, *default:* `nil`) - Compound values are those that contain either a number of simple valued facets (such as a latitude/longitude pair), or "mediator" topics representing multi-dimensional relationships between topics. See metaweb/data/topictable/topic.proto for more details.
  *   `datetimeValue` (*type:* `String.t`, *default:* `nil`) - Present when value is datetime.
  *   `enumValue` (*type:* `String.t`, *default:* `nil`) - Present when value is enum.
  *   `floatValue` (*type:* `float()`, *default:* `nil`) - Present when value is float.
  *   `idValue` (*type:* `String.t`, *default:* `nil`) - Present when value is an id.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Present when value is int.
  *   `serializedProtoValue` (*type:* `String.t`, *default:* `nil`) - Present when value is a serialized protocol buffer.
  *   `textValue` (*type:* `String.t`, *default:* `nil`) - Present when value is text.
  *   `uriValue` (*type:* `String.t`, *default:* `nil`) - Present when value is URI.
  *   `uriValueFprint32` (*type:* `integer()`, *default:* `nil`) - 32-bit fprint of uri. Can be used instead of `uri_value` to save space. See `GetNormalizedUriFprint32()`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :compoundValue =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgTopic.t() | nil,
          :datetimeValue => String.t() | nil,
          :enumValue => String.t() | nil,
          :floatValue => float() | nil,
          :idValue => String.t() | nil,
          :intValue => String.t() | nil,
          :serializedProtoValue => String.t() | nil,
          :textValue => String.t() | nil,
          :uriValue => String.t() | nil,
          :uriValueFprint32 => integer() | nil
        }

  field(:boolValue)
  field(:compoundValue, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgTopic)
  field(:datetimeValue)
  field(:enumValue)
  field(:floatValue)
  field(:idValue)
  field(:intValue)
  field(:serializedProtoValue)
  field(:textValue)
  field(:uriValue)
  field(:uriValueFprint32)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
