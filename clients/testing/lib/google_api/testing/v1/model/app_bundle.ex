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

defmodule GoogleApi.Testing.V1.Model.AppBundle do
  @moduledoc """
  An Android App Bundle file format, containing a BundleConfig.pb file,
  a base module directory, zero or more dynamic feature module directories.
  <p>See https://developer.android.com/guide/app-bundle/build for guidance on
  building App Bundles.

  ## Attributes

  *   `bundleLocation` (*type:* `GoogleApi.Testing.V1.Model.FileReference.t`, *default:* `nil`) - .aab file representing the app bundle under test.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bundleLocation => GoogleApi.Testing.V1.Model.FileReference.t()
        }

  field(:bundleLocation, as: GoogleApi.Testing.V1.Model.FileReference)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.AppBundle do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.AppBundle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.AppBundle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
