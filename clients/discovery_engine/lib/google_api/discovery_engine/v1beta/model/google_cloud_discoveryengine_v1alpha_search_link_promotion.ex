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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion do
  @moduledoc """
  Promotion proto includes uri and other helping information to display the promotion.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The Promotion description. Maximum length: 200 characters.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Optional. The enabled promotion will be returned for any serving configs associated with the parent of the control this promotion is attached to. This flag is used for basic site search only.
  *   `imageUri` (*type:* `String.t`, *default:* `nil`) - Optional. The promotion thumbnail image url.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. The title of the promotion. Maximum length: 160 characters.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Optional. The URL for the page the user wants to promote. Must be set for site search. For other verticals, this is optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :enabled => boolean() | nil,
          :imageUri => String.t() | nil,
          :title => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:description)
  field(:enabled)
  field(:imageUri)
  field(:title)
  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
