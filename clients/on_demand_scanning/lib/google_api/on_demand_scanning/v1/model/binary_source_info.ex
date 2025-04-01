# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.OnDemandScanning.V1.Model.BinarySourceInfo do
  @moduledoc """


  ## Attributes

  *   `binaryVersion` (*type:* `GoogleApi.OnDemandScanning.V1.Model.PackageVersion.t`, *default:* `nil`) - The binary package. This is significant when the source is different than the binary itself. Historically if they've differed, we've stored the name of the source and its version in the package/version fields, but we should also store the binary package info, as that's what's actually installed.
  *   `sourceVersion` (*type:* `GoogleApi.OnDemandScanning.V1.Model.PackageVersion.t`, *default:* `nil`) - The source package. Similar to the above, this is significant when the source is different than the binary itself. Since the top-level package/version fields are based on an if/else, we need a separate field for both binary and source if we want to know definitively where the data is coming from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryVersion => GoogleApi.OnDemandScanning.V1.Model.PackageVersion.t() | nil,
          :sourceVersion => GoogleApi.OnDemandScanning.V1.Model.PackageVersion.t() | nil
        }

  field(:binaryVersion, as: GoogleApi.OnDemandScanning.V1.Model.PackageVersion)
  field(:sourceVersion, as: GoogleApi.OnDemandScanning.V1.Model.PackageVersion)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.BinarySourceInfo do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.BinarySourceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.BinarySourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
