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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadata do
  @moduledoc """
  Extra ranking info returned with affinity data. This info is returned by DAS and passed to PAPI clients (Yenta), where it is used for ranking and filtering device and server suggestions together.

  ## Attributes

  *   `clientInteractionInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadataClientInteractionInfo.t`, *default:* `nil`) - Information regarding client interactions.
  *   `cloudDeviceDataInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadataCloudDeviceDataInfo.t`, *default:* `nil`) - Device information about the candidate available in the cloud.
  *   `cloudScore` (*type:* `float()`, *default:* `nil`) - Affinity score for the cloud contact.
  *   `suggestionConfidence` (*type:* `String.t`, *default:* `nil`) - Indicator of the confidence in suggestion relevance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientInteractionInfo =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadataClientInteractionInfo.t()
            | nil,
          :cloudDeviceDataInfo =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadataCloudDeviceDataInfo.t()
            | nil,
          :cloudScore => float() | nil,
          :suggestionConfidence => String.t() | nil
        }

  field(:clientInteractionInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadataClientInteractionInfo
  )

  field(:cloudDeviceDataInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadataCloudDeviceDataInfo
  )

  field(:cloudScore)
  field(:suggestionConfidence)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiAffinityMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
