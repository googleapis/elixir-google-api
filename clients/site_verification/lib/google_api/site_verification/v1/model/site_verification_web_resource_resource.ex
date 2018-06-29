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

defmodule GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource do
  @moduledoc """


  ## Attributes

  - id (String.t): The string used to identify this site. This value should be used in the \&quot;id\&quot; portion of the REST URL for the Get, Update, and Delete operations. Defaults to: `null`.
  - owners ([String.t]): The email addresses of all verified owners. Defaults to: `null`.
  - site (SiteVerificationWebResourceResourceSite):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :owners => list(any()),
          :site => GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResourceSite.t()
        }

  field(:id)
  field(:owners, type: :list)
  field(:site, as: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResourceSite)
end

defimpl Poison.Decoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource do
  def decode(value, options) do
    GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
