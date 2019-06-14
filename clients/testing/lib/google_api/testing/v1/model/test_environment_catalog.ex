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

defmodule GoogleApi.Testing.V1.Model.TestEnvironmentCatalog do
  @moduledoc """
  A description of a test environment.

  ## Attributes

  - androidDeviceCatalog (GoogleApi.Testing.V1.Model.AndroidDeviceCatalog.t): Supported Android devices. Defaults to `nil`.
  - iosDeviceCatalog (GoogleApi.Testing.V1.Model.IosDeviceCatalog.t): Supported iOS devices. Defaults to `nil`.
  - networkConfigurationCatalog (GoogleApi.Testing.V1.Model.NetworkConfigurationCatalog.t): Supported network configurations. Defaults to `nil`.
  - softwareCatalog (GoogleApi.Testing.V1.Model.ProvidedSoftwareCatalog.t): The software test environment provided by TestExecutionService. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidDeviceCatalog => GoogleApi.Testing.V1.Model.AndroidDeviceCatalog.t(),
          :iosDeviceCatalog => GoogleApi.Testing.V1.Model.IosDeviceCatalog.t(),
          :networkConfigurationCatalog =>
            GoogleApi.Testing.V1.Model.NetworkConfigurationCatalog.t(),
          :softwareCatalog => GoogleApi.Testing.V1.Model.ProvidedSoftwareCatalog.t()
        }

  field(:androidDeviceCatalog, as: GoogleApi.Testing.V1.Model.AndroidDeviceCatalog)
  field(:iosDeviceCatalog, as: GoogleApi.Testing.V1.Model.IosDeviceCatalog)
  field(:networkConfigurationCatalog, as: GoogleApi.Testing.V1.Model.NetworkConfigurationCatalog)
  field(:softwareCatalog, as: GoogleApi.Testing.V1.Model.ProvidedSoftwareCatalog)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TestEnvironmentCatalog do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TestEnvironmentCatalog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TestEnvironmentCatalog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
