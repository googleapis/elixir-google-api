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

defmodule GoogleApi.ServiceManagement.V1.Model.ChangeReport do
  @moduledoc """
  Change report associated with a particular service configuration.

  It contains a list of ConfigChanges based on the comparison between
  two service configurations.

  ## Attributes

  *   `configChanges` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.ConfigChange.t)`, *default:* `nil`) - List of changes between two service configurations.
      The changes will be alphabetically sorted based on the identifier
      of each change.
      A ConfigChange identifier is a dot separated path to the configuration.
      Example: visibility.rules[selector='LibraryService.CreateBook'].restriction
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configChanges => list(GoogleApi.ServiceManagement.V1.Model.ConfigChange.t())
        }

  field(:configChanges, as: GoogleApi.ServiceManagement.V1.Model.ConfigChange, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.ChangeReport do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.ChangeReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.ChangeReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
