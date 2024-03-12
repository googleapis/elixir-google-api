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

defmodule GoogleApi.IAM.V1.Model.KeyData do
  @moduledoc """
  Represents a public key data along with its format.

  ## Attributes

  *   `format` (*type:* `String.t`, *default:* `nil`) - Output only. The format of the key.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Output only. The key data. The format of the key is represented by the format field.
  *   `keySpec` (*type:* `String.t`, *default:* `nil`) - Required. The specifications for the key.
  *   `notAfterTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Latest timestamp when this key is valid. Attempts to use this key after this time will fail. Only present if the key data represents a X.509 certificate.
  *   `notBeforeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Earliest timestamp when this key is valid. Attempts to use this key before this time will fail. Only present if the key data represents a X.509 certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :format => String.t() | nil,
          :key => String.t() | nil,
          :keySpec => String.t() | nil,
          :notAfterTime => DateTime.t() | nil,
          :notBeforeTime => DateTime.t() | nil
        }

  field(:format)
  field(:key)
  field(:keySpec)
  field(:notAfterTime, as: DateTime)
  field(:notBeforeTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.KeyData do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.KeyData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.KeyData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
