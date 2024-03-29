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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.GetIosPostInstallAttributionResponse do
  @moduledoc """
  Response for iSDK to execute strong match flow for post-install attribution. Information of the resolved FDL link.

  ## Attributes

  *   `appMinimumVersion` (*type:* `String.t`, *default:* `nil`) - The minimum version for app, specified by dev through ?imv= parameter. Return to iSDK to allow app to evaluate if current version meets this.
  *   `attributionConfidence` (*type:* `String.t`, *default:* `nil`) - The confidence of the returned attribution.
  *   `deepLink` (*type:* `String.t`, *default:* `nil`) - The deep-link attributed post-install via one of several techniques (device heuristics, copy unique).
  *   `externalBrowserDestinationLink` (*type:* `String.t`, *default:* `nil`) - User-agent specific custom-scheme URIs for iSDK to open. This will be set according to the user-agent tha the click was originally made in. There is no Safari-equivalent custom-scheme open URLs. ie: googlechrome://www.example.com ie: firefox://open-url?url=http://www.example.com ie: opera-http://example.com
  *   `fallbackLink` (*type:* `String.t`, *default:* `nil`) - The link to navigate to update the app if min version is not met. This is either (in order): 1) fallback link (from ?ifl= parameter, if specified by developer) or 2) AppStore URL (from ?isi= parameter, if specified), or 3) the payload link (from required link= parameter).
  *   `invitationId` (*type:* `String.t`, *default:* `nil`) - Invitation ID attributed post-install via one of several techniques (device heuristics, copy unique).
  *   `isStrongMatchExecutable` (*type:* `boolean()`, *default:* `nil`) - Instruction for iSDK to attemmpt to perform strong match. For instance, if browser does not support/allow cookie or outside of support browsers, this will be false.
  *   `matchMessage` (*type:* `String.t`, *default:* `nil`) - Describes why match failed, ie: "discarded due to low confidence". This message will be publicly visible.
  *   `requestIpVersion` (*type:* `String.t`, *default:* `nil`) - Which IP version the request was made from.
  *   `requestedLink` (*type:* `String.t`, *default:* `nil`) - Entire FDL (short or long) attributed post-install via one of several techniques (device heuristics, copy unique).
  *   `resolvedLink` (*type:* `String.t`, *default:* `nil`) - The entire FDL, expanded from a short link. It is the same as the requested_link, if it is long. Parameters from this should not be used directly (ie: server can default utm_[campaign|medium|source] to a value when requested_link lack them, server determine the best fallback_link when requested_link specifies >1 fallback links).
  *   `utmCampaign` (*type:* `String.t`, *default:* `nil`) - Scion campaign value to be propagated by iSDK to Scion at post-install.
  *   `utmContent` (*type:* `String.t`, *default:* `nil`) - Scion content value to be propagated by iSDK to Scion at app-reopen.
  *   `utmMedium` (*type:* `String.t`, *default:* `nil`) - Scion medium value to be propagated by iSDK to Scion at post-install.
  *   `utmSource` (*type:* `String.t`, *default:* `nil`) - Scion source value to be propagated by iSDK to Scion at post-install.
  *   `utmTerm` (*type:* `String.t`, *default:* `nil`) - Scion term value to be propagated by iSDK to Scion at app-reopen.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appMinimumVersion => String.t() | nil,
          :attributionConfidence => String.t() | nil,
          :deepLink => String.t() | nil,
          :externalBrowserDestinationLink => String.t() | nil,
          :fallbackLink => String.t() | nil,
          :invitationId => String.t() | nil,
          :isStrongMatchExecutable => boolean() | nil,
          :matchMessage => String.t() | nil,
          :requestIpVersion => String.t() | nil,
          :requestedLink => String.t() | nil,
          :resolvedLink => String.t() | nil,
          :utmCampaign => String.t() | nil,
          :utmContent => String.t() | nil,
          :utmMedium => String.t() | nil,
          :utmSource => String.t() | nil,
          :utmTerm => String.t() | nil
        }

  field(:appMinimumVersion)
  field(:attributionConfidence)
  field(:deepLink)
  field(:externalBrowserDestinationLink)
  field(:fallbackLink)
  field(:invitationId)
  field(:isStrongMatchExecutable)
  field(:matchMessage)
  field(:requestIpVersion)
  field(:requestedLink)
  field(:resolvedLink)
  field(:utmCampaign)
  field(:utmContent)
  field(:utmMedium)
  field(:utmSource)
  field(:utmTerm)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseDynamicLinks.V1.Model.GetIosPostInstallAttributionResponse do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.GetIosPostInstallAttributionResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseDynamicLinks.V1.Model.GetIosPostInstallAttributionResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
