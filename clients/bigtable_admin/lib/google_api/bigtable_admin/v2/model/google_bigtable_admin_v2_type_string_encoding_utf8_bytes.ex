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

defmodule GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes do
  @moduledoc """
  UTF-8 encoding. Sorted mode: - All values are supported. - Code point order is preserved. Distinct mode: all values are supported. Compatible with: - BigQuery `TEXT` encoding - HBase `Bytes.toBytes` - Java `String#getBytes(StandardCharsets.UTF_8)`

  ## Attributes

  *   `nullEscapeChar` (*type:* `String.t`, *default:* `nil`) - Single-character escape sequence used to support NULL values. If set, allows NULL values to be encoded as the empty string "". The actual empty string, or any value where every character equals `null_escape_char`, has one more `null_escape_char` appended. If `null_escape_char` is set and does not equal the ASCII null character 0x00, then the encoding will not support sorted mode. .
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nullEscapeChar => String.t() | nil
        }

  field(:nullEscapeChar)
end

defimpl Poison.Decoder,
  for: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BigtableAdmin.V2.Model.GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
