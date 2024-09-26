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

defmodule GoogleApi.ServiceManagement.V1.Model.CommonLanguageSettings do
  @moduledoc """
  Required information for every language.

  ## Attributes

  *   `destinations` (*type:* `list(String.t)`, *default:* `nil`) - The destination where API teams want this client library to be published.
  *   `referenceDocsUri` (*type:* `String.t`, *default:* `nil`) - Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  *   `selectiveGapicGeneration` (*type:* `GoogleApi.ServiceManagement.V1.Model.SelectiveGapicGeneration.t`, *default:* `nil`) - Configuration for which RPCs should be generated in the GAPIC client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinations => list(String.t()) | nil,
          :referenceDocsUri => String.t() | nil,
          :selectiveGapicGeneration =>
            GoogleApi.ServiceManagement.V1.Model.SelectiveGapicGeneration.t() | nil
        }

  field(:destinations, type: :list)
  field(:referenceDocsUri)

  field(:selectiveGapicGeneration,
    as: GoogleApi.ServiceManagement.V1.Model.SelectiveGapicGeneration
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.CommonLanguageSettings do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.CommonLanguageSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.CommonLanguageSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
