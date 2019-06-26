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

defmodule GoogleApi.ServiceManagement.V1.Model.ConfigSource do
  @moduledoc """
  Represents a source file which is used to generate the service configuration
  defined by `google.api.Service`.

  ## Attributes

  *   `files` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.ConfigFile.t)`, *default:* `nil`) - Set of source configuration files that are used to generate a service
      configuration (`google.api.Service`).
  *   `id` (*type:* `String.t`, *default:* `nil`) - A unique ID for a specific instance of this message, typically assigned
      by the client for tracking purpose. If empty, the server may choose to
      generate one instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :files => list(GoogleApi.ServiceManagement.V1.Model.ConfigFile.t()),
          :id => String.t()
        }

  field(:files, as: GoogleApi.ServiceManagement.V1.Model.ConfigFile, type: :list)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.ConfigSource do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.ConfigSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.ConfigSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
