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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantContextMediaProviderId do
  @moduledoc """
  IMPORTANT: This proto is being migrated to ProviderId. If you are adding new field, please add to ProviderId as well.

  ## Attributes

  *   `androidPackageName` (*type:* `String.t`, *default:* `nil`) - Unique package name that identifies a Android app of the provider.
  *   `castAppId` (*type:* `String.t`, *default:* `nil`) - Unique app id that identifies a Cast app of the provider.
  *   `chromeOsPackageName` (*type:* `String.t`, *default:* `nil`) - Unique package name that identifies a ChromeOS app of the provider.
  *   `homeAppPackageName` (*type:* `String.t`, *default:* `nil`) - Unique package name that identifies a Home app of the provider.
  *   `iosBundleIdentifier` (*type:* `String.t`, *default:* `nil`) - Bundle identifier that identifies an iOS app of the provider.
  *   `kaiOsPackageName` (*type:* `String.t`, *default:* `nil`) - Unique package name that identifies a KaiOS app of the provider.
  *   `kgProviderKey` (*type:* `String.t`, *default:* `nil`) - Each onboarded provider has a unique provider key. KG provider keys are string identifiers used to identify a provider in some Media backends since mids, names, etc can change.
  *   `mid` (*type:* `String.t`, *default:* `nil`) - The MID of the provider. A MID is a unique identifier issued by Knowledge Graph for all entities contained in its graph.
  *   `providerVariant` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantContextProviderVariant.t`, *default:* `nil`) - Provider variant corresponding to the current MediaProviderId.
  *   `sipProviderId` (*type:* `String.t`, *default:* `nil`) - Bundle id that identifies an Session Initiation Protocol (SIP) provider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidPackageName => String.t() | nil,
          :castAppId => String.t() | nil,
          :chromeOsPackageName => String.t() | nil,
          :homeAppPackageName => String.t() | nil,
          :iosBundleIdentifier => String.t() | nil,
          :kaiOsPackageName => String.t() | nil,
          :kgProviderKey => String.t() | nil,
          :mid => String.t() | nil,
          :providerVariant =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantContextProviderVariant.t() | nil,
          :sipProviderId => String.t() | nil
        }

  field(:androidPackageName)
  field(:castAppId)
  field(:chromeOsPackageName)
  field(:homeAppPackageName)
  field(:iosBundleIdentifier)
  field(:kaiOsPackageName)
  field(:kgProviderKey)
  field(:mid)
  field(:providerVariant, as: GoogleApi.ContentWarehouse.V1.Model.AssistantContextProviderVariant)
  field(:sipProviderId)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantContextMediaProviderId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantContextMediaProviderId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantContextMediaProviderId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end