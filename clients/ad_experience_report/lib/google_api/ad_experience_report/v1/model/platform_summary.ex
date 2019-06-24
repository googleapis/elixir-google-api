# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdExperienceReport.V1.Model.PlatformSummary do
  @moduledoc """
  Summary of the ad experience rating of a site for a specific platform.

  ## Attributes

  *   `betterAdsStatus` (*type:* `String.t`, *default:* `nil`) - The status of the site reviewed for the Better Ads Standards.
  *   `enforcementTime` (*type:* `DateTime.t`, *default:* `nil`) - The date on which ad filtering begins.
  *   `filterStatus` (*type:* `String.t`, *default:* `nil`) - The ad filtering status of the site.
  *   `lastChangeTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time that the site changed status.
  *   `region` (*type:* `list(String.t)`, *default:* `nil`) - The assigned regions for the site and platform.
  *   `reportUrl` (*type:* `String.t`, *default:* `nil`) - A link that leads to a full ad experience report.
  *   `underReview` (*type:* `boolean()`, *default:* `nil`) - Whether the site is currently under review.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :betterAdsStatus => String.t(),
          :enforcementTime => DateTime.t(),
          :filterStatus => String.t(),
          :lastChangeTime => DateTime.t(),
          :region => list(String.t()),
          :reportUrl => String.t(),
          :underReview => boolean()
        }

  field(:betterAdsStatus)
  field(:enforcementTime, as: DateTime)
  field(:filterStatus)
  field(:lastChangeTime, as: DateTime)
  field(:region, type: :list)
  field(:reportUrl)
  field(:underReview)
end

defimpl Poison.Decoder, for: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary do
  def decode(value, options) do
    GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
