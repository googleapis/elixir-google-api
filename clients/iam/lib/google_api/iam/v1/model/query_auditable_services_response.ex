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

defmodule GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse do
  @moduledoc """
  A response containing a list of auditable services for a resource.

  ## Attributes

  - services (list(GoogleApi.IAM.V1.Model.AuditableService.t)): The auditable services for a resource. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :services => list(GoogleApi.IAM.V1.Model.AuditableService.t())
        }

  field(:services, as: GoogleApi.IAM.V1.Model.AuditableService, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.QueryAuditableServicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
