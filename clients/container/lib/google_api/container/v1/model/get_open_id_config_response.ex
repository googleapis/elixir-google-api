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

defmodule GoogleApi.Container.V1.Model.GetOpenIDConfigResponse do
  @moduledoc """
  GetOpenIDConfigResponse is an OIDC discovery document for the cluster.
  See the OpenID Connect Discovery 1.0 specification for details.

  ## Attributes

  - claims_supported (list(String.t)): Supported claims. Defaults to `nil`.
  - grant_types (list(String.t)): Supported grant types. Defaults to `nil`.
  - id_token_signing_alg_values_supported (list(String.t)): supported ID Token signing Algorithms. Defaults to `nil`.
  - issuer (String.t): OIDC Issuer. Defaults to `nil`.
  - jwks_uri (String.t): JSON Web Key uri. Defaults to `nil`.
  - response_types_supported (list(String.t)): Supported response types. Defaults to `nil`.
  - subject_types_supported (list(String.t)): Supported subject types. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :claims_supported => list(String.t()),
          :grant_types => list(String.t()),
          :id_token_signing_alg_values_supported => list(String.t()),
          :issuer => String.t(),
          :jwks_uri => String.t(),
          :response_types_supported => list(String.t()),
          :subject_types_supported => list(String.t())
        }

  field(:claims_supported, type: :list)
  field(:grant_types, type: :list)
  field(:id_token_signing_alg_values_supported, type: :list)
  field(:issuer)
  field(:jwks_uri)
  field(:response_types_supported, type: :list)
  field(:subject_types_supported, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.GetOpenIDConfigResponse do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.GetOpenIDConfigResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.GetOpenIDConfigResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
