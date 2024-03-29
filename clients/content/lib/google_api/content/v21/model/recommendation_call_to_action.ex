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

defmodule GoogleApi.Content.V21.Model.RecommendationCallToAction do
  @moduledoc """
  Call to action (CTA) that explains how a merchant can implement this recommendation

  ## Attributes

  *   `intent` (*type:* `String.t`, *default:* `nil`) - Output only. Intent of the action. This value describes the intent (for example, `OPEN_CREATE_EMAIL_CAMPAIGN_FLOW`) and can vary from recommendation to recommendation. This value can change over time for the same recommendation. Currently available intent values: - OPEN_CREATE_EMAIL_CAMPAIGN_FLOW: Opens a user journey where they can create a marketing email campaign. (No default URL) - OPEN_CREATE_COLLECTION_TAB: Opens a user journey where they can [create a collection](https://support.google.com/merchants/answer/9703228) for their Merchant account. (No default URL)
  *   `localizedText` (*type:* `String.t`, *default:* `nil`) - Output only. Localized text of the CTA. Optional.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Optional. URL of the CTA. This field will only be set for some recommendations where there is a suggested landing URL. Otherwise it will be set to an empty string. We recommend developers to use their own custom landing page according to the description of the intent field above when this uri field is empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intent => String.t() | nil,
          :localizedText => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:intent)
  field(:localizedText)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RecommendationCallToAction do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RecommendationCallToAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RecommendationCallToAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
