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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorType do
  @moduledoc """
  A processor type is responsible for performing a certain document understanding task on a certain type of document.

  ## Attributes

  *   `allowCreation` (*type:* `boolean()`, *default:* `nil`) - Whether the processor type allows creation. If true, users can create a processor of this processor type. Otherwise, users need to request access.
  *   `availableLocations` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.t)`, *default:* `nil`) - The locations in which this processor is available.
  *   `category` (*type:* `String.t`, *default:* `nil`) - The processor category, used by UI to group processor types.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Launch stage of the processor type
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the processor type. Format: projects/{project}/processorTypes/{processor_type}
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the processor, e.g., "invoice_parsing".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowCreation => boolean() | nil,
          :availableLocations =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.t()
            )
            | nil,
          :category => String.t() | nil,
          :launchStage => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:allowCreation)

  field(:availableLocations,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo,
    type: :list
  )

  field(:category)
  field(:launchStage)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorType do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessorType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
