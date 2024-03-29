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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesSipProviderInfo do
  @moduledoc """
  Session Initiation Protocol (SIP) information for providers that use SIP to initiate multimedia communication sessions, like Google Voice and Fi. https://en.wikipedia.org/wiki/Session_Initiation_Protocol

  ## Attributes

  *   `providerId` (*type:* `String.t`, *default:* `nil`) - The providers id (MID) which is the primary identifier for a call provider within the Assistant. A MID, or machine identifier, is a unique identifier issued by Knowledge Graph for all entities contained in it's graph.
  *   `realm` (*type:* `String.t`, *default:* `nil`) - Calling realm to be use for each call. i.e. For anonymous, this would be set to anonymous.chirp.google.com
  *   `useBirdsongTacl` (*type:* `boolean()`, *default:* `nil`) - If true, client should use the Birdsong TaCL API for this call. Uses the VoiceCallManager API by default. For more details: go/birdsong-migration-google-home
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :providerId => String.t() | nil,
          :realm => String.t() | nil,
          :useBirdsongTacl => boolean() | nil
        }

  field(:providerId)
  field(:realm)
  field(:useBirdsongTacl)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesSipProviderInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesSipProviderInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesSipProviderInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
