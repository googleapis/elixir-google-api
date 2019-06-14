# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Firestore.V1beta1.Model.Value do
  @moduledoc """
  A message that can hold any of the supported value types.

  ## Attributes

  - arrayValue (GoogleApi.Firestore.V1beta1.Model.ArrayValue.t): An array value.

  Cannot directly contain another array value, though can contain an
  map which contains another array. Defaults to `nil`.
  - booleanValue (boolean()): A boolean value. Defaults to `nil`.
  - bytesValue (String.t): A bytes value.

  Must not exceed 1 MiB - 89 bytes.
  Only the first 1,500 bytes are considered by queries. Defaults to `nil`.
  - doubleValue (float()): A double value. Defaults to `nil`.
  - geoPointValue (GoogleApi.Firestore.V1beta1.Model.LatLng.t): A geo point value representing a point on the surface of Earth. Defaults to `nil`.
  - integerValue (String.t): An integer value. Defaults to `nil`.
  - mapValue (GoogleApi.Firestore.V1beta1.Model.MapValue.t): A map value. Defaults to `nil`.
  - nullValue (String.t): A null value. Defaults to `nil`.
  - referenceValue (String.t): A reference to a document. For example:
  `projects/{project_id}/databases/{database_id}/documents/{document_path}`. Defaults to `nil`.
  - stringValue (String.t): A string value.

  The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes.
  Only the first 1,500 bytes of the UTF-8 representation are considered by
  queries. Defaults to `nil`.
  - timestampValue (DateTime.t): A timestamp value.

  Precise only to microseconds. When stored, any additional precision is
  rounded down. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayValue => GoogleApi.Firestore.V1beta1.Model.ArrayValue.t(),
          :booleanValue => boolean(),
          :bytesValue => String.t(),
          :doubleValue => float(),
          :geoPointValue => GoogleApi.Firestore.V1beta1.Model.LatLng.t(),
          :integerValue => String.t(),
          :mapValue => GoogleApi.Firestore.V1beta1.Model.MapValue.t(),
          :nullValue => String.t(),
          :referenceValue => String.t(),
          :stringValue => String.t(),
          :timestampValue => DateTime.t()
        }

  field(:arrayValue, as: GoogleApi.Firestore.V1beta1.Model.ArrayValue)
  field(:booleanValue)
  field(:bytesValue)
  field(:doubleValue)
  field(:geoPointValue, as: GoogleApi.Firestore.V1beta1.Model.LatLng)
  field(:integerValue)
  field(:mapValue, as: GoogleApi.Firestore.V1beta1.Model.MapValue)
  field(:nullValue)
  field(:referenceValue)
  field(:stringValue)
  field(:timestampValue, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Value do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
