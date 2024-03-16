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

defmodule GoogleApi.ContentWarehouse.V1.Model.TrawlerSSLCertificateInfo do
  @moduledoc """
  This protobuf specifies the results of https certificate validation, typically used for the BadSSLCertificate field in FetchReplyData. -------------------------- Next Tag: 13 -------------------------------

  ## Attributes

  *   `ALPNNegotiatedProtocol` (*type:* `String.t`, *default:* `nil`) - ALPN negotiated protocol, see https://tools.ietf.org/html/rfc7301 The value will either be empty, or one of the protocol names sent by the client that the server accepted. Examples include "h2" and "acme-tls/1".
  *   `CertificateChain` (*type:* `list(String.t)`, *default:* `nil`) - If present, this consists of the remote webserver's X.509 certificate chain in DER format. The chain stored here is the *reversed* result of SSL_get_peer_cert_chain(). That is to say, it is the chain presented by the peer (which may differ from the chain that was built and verified), but in leaf-last order. Typically the root cert will not be included. But do not assume anything, because servers do all manner of weird things. (For example on the beginning of the chain, there might be also some irrelevant certificates besides the root certificate.) Certificates may be the empty string, indicating an encoding failure. See also |IsTruncated|. Certs can be loaded with util/sig/cert.h Cert::LoadBinaryCert(), converted to ASCII PEM format (CertificateUtil::CertificateToPEM()) or shown as text at the commandline by piping them into 'openssl x509 -text -inform DER'.
  *   `ErrorMessages` (*type:* `list(String.t)`, *default:* `nil`) - ErrorMessages contains errors from HTTPS validation. Examples of such errors include invalid certificates, failure to build a certificate chain, certificates that do not match the expected hostname, and internal errors. If ErrorMessages is empty, HTTPS validation succeeded. Otherwise, it failed. This is the only guarantee about the contents of this field, though legacy code exists that embeds invalid assumptions, b/70904498. New code should not do anything with this field other than test whether it is empty and display its value to humans. If you need to know more about the details of a particular HTTPS validation, you can revalidate |CertificateChain| independently.
  *   `IsTruncated` (*type:* `boolean()`, *default:* `nil`) - This SSLCertificateInfo had its fields truncated because it was too large. It is no longer set (cl/205356251) but may be true in old records.
  *   `OCSPResponse` (*type:* `String.t`, *default:* `nil`) - Stapled OCSP response obtained during the TLS handshake, if any. An OCSP (Online Certificate Status Protocol) response is an indication, signed by the issuing CA, that the certificate has not been revoked. A TLS handshake extension allows servers to "staple" a response to the certificate served in the handshake, saving the need for the client to fetch it itself from the CA. This field contain the stapled OCSP response if the server served one. See RFC6066, Section 8 for the data format: https://tools.ietf.org/html/rfc6066#section-8
  *   `SCTList` (*type:* `String.t`, *default:* `nil`) - SCTList obtained during the TLS handshake, if any. See RFC6962, Section 3.3 for the data format: https://tools.ietf.org/html/rfc6962#section-3.3
  *   `SSLCipherSuite` (*type:* `integer()`, *default:* `nil`) - 
  *   `SSLCipherSuiteName` (*type:* `String.t`, *default:* `nil`) - 
  *   `SSLProtocolVersion` (*type:* `integer()`, *default:* `nil`) - Details about the SSL/TLS protocol and cipher. See RFC5246 and google3/crawler/trawler/hope/proto/ssl.proto for more details.
  *   `SSLProtocolVersionName` (*type:* `String.t`, *default:* `nil`) - The names of the SSL protocol version and cipher suite. These strings are implementation defined and may be subject to change.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ALPNNegotiatedProtocol => String.t() | nil,
          :CertificateChain => list(String.t()) | nil,
          :ErrorMessages => list(String.t()) | nil,
          :IsTruncated => boolean() | nil,
          :OCSPResponse => String.t() | nil,
          :SCTList => String.t() | nil,
          :SSLCipherSuite => integer() | nil,
          :SSLCipherSuiteName => String.t() | nil,
          :SSLProtocolVersion => integer() | nil,
          :SSLProtocolVersionName => String.t() | nil
        }

  field(:ALPNNegotiatedProtocol)
  field(:CertificateChain, type: :list)
  field(:ErrorMessages, type: :list)
  field(:IsTruncated)
  field(:OCSPResponse)
  field(:SCTList)
  field(:SSLCipherSuite)
  field(:SSLCipherSuiteName)
  field(:SSLProtocolVersion)
  field(:SSLProtocolVersionName)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerSSLCertificateInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.TrawlerSSLCertificateInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerSSLCertificateInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end