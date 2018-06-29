# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec do
  @moduledoc """
  Specification for a token used to generate iframes. The token specifies what data the admin is allowed to modify and the URI the iframe is allowed to communiate with.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#administratorWebTokenSpec\&quot;. Defaults to: `null`.
  - parent (String.t): The URI of the parent frame hosting the iframe. To prevent XSS, the iframe may not be hosted at other URIs. This URI must be https. Defaults to: `null`.
  - permission ([String.t]): The list of permissions the admin is granted within the iframe. The admin will only be allowed to view an iframe if they have all of the permissions associated with it. The only valid value is \&quot;approveApps\&quot; that will allow the admin to access the iframe in \&quot;approve\&quot; mode. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :parent => any(),
          :permission => list(any())
        }

  field(:kind)
  field(:parent)
  field(:permission, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
