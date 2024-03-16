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

defmodule GoogleApi.PublicCA.V1.Model.ExternalAccountKey do
  @moduledoc """
  A representation of an ExternalAccountKey used for [external account binding](https://tools.ietf.org/html/rfc8555#section-7.3.4) within ACME.

  ## Attributes

  *   `b64MacKey` (*type:* `String.t`, *default:* `nil`) - Output only. Base64-URL-encoded HS256 key. It is generated by the PublicCertificateAuthorityService when the ExternalAccountKey is created
  *   `keyId` (*type:* `String.t`, *default:* `nil`) - Output only. Key ID. It is generated by the PublicCertificateAuthorityService when the ExternalAccountKey is created
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name. projects/{project}/locations/{location}/externalAccountKeys/{key_id}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :b64MacKey => String.t() | nil,
          :keyId => String.t() | nil,
          :name => String.t() | nil
        }

  field(:b64MacKey)
  field(:keyId)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.PublicCA.V1.Model.ExternalAccountKey do
  def decode(value, options) do
    GoogleApi.PublicCA.V1.Model.ExternalAccountKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PublicCA.V1.Model.ExternalAccountKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end