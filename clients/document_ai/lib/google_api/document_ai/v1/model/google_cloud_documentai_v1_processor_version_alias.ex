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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersionAlias do
  @moduledoc """
  Contains the alias and the aliased resource name of processor version.

  ## Attributes

  *   `alias` (*type:* `String.t`, *default:* `nil`) - The alias in the form of `processor_version` resource name.
  *   `processorVersion` (*type:* `String.t`, *default:* `nil`) - The resource name of aliased processor version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alias => String.t() | nil,
          :processorVersion => String.t() | nil
        }

  field(:alias)
  field(:processorVersion)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersionAlias do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersionAlias.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersionAlias do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end