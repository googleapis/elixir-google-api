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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword do
  @moduledoc """
  A Keyword criterion segment.

  ## Attributes

  *   `adGroupCriterion` (*type:* `String.t`, *default:* `nil`) - The AdGroupCriterion resource name.
  *   `info` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo.t`, *default:* `nil`) - Keyword info.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adGroupCriterion => String.t() | nil,
          :info =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo.t() | nil
        }

  field(:adGroupCriterion)
  field(:info, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo)
end

defimpl Poison.Decoder, for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
