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

defmodule GoogleApi.ServiceManagement.V1.Model.ListServicesResponse do
  @moduledoc """
  Response message for `ListServices` method.

  ## Attributes

  - nextPageToken (String.t): Token that can be passed to `ListServices` to resume a paginated query. Defaults to `nil`.
  - services (list(GoogleApi.ServiceManagement.V1.Model.ManagedService.t)): The returned services will only have the name field set. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :services => list(GoogleApi.ServiceManagement.V1.Model.ManagedService.t())
        }

  field(:nextPageToken)
  field(:services, as: GoogleApi.ServiceManagement.V1.Model.ManagedService, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.ListServicesResponse do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.ListServicesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.ListServicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
