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

defmodule GoogleApi.CloudResourceManager.V1.Model.RestoreDefault do
  @moduledoc """
  Ignores policies set above this resource and restores the &#x60;constraint_default&#x60; enforcement behavior of the specific &#x60;Constraint&#x60; at this resource.  Suppose that &#x60;constraint_default&#x60; is set to &#x60;ALLOW&#x60; for the &#x60;Constraint&#x60; &#x60;constraints/serviceuser.services&#x60;. Suppose that organization foo.com sets a &#x60;Policy&#x60; at their Organization resource node that restricts the allowed service activations to deny all service activations. They could then set a &#x60;Policy&#x60; with the &#x60;policy_type&#x60; &#x60;restore_default&#x60; on several experimental projects, restoring the &#x60;constraint_default&#x60; enforcement of the &#x60;Constraint&#x60; for only those projects, allowing those projects to have all services activated.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.RestoreDefault do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.RestoreDefault.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.RestoreDefault do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
