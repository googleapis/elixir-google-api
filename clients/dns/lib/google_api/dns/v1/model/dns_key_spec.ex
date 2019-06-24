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

defmodule GoogleApi.DNS.V1.Model.DnsKeySpec do
  @moduledoc """
  Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.

  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - String mnemonic specifying the DNSSEC algorithm of this key.
  *   `keyLength` (*type:* `integer()`, *default:* `nil`) - Length of the keys in bits.
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, will only be used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and will be used to sign all other types of resource record sets.
  *   `kind` (*type:* `String.t`, *default:* `dns#dnsKeySpec`) - Identifies what kind of resource this is. Value: the fixed string "dns#dnsKeySpec".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t(),
          :keyLength => integer(),
          :keyType => String.t(),
          :kind => String.t()
        }

  field(:algorithm)
  field(:keyLength)
  field(:keyType)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.DnsKeySpec do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.DnsKeySpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.DnsKeySpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
