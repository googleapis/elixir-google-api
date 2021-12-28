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

defmodule GoogleApi.DFAReporting.V35.Model.ReportFloodlightCriteriaReportProperties do
  @moduledoc """
  The properties of the report.

  ## Attributes

  *   `includeAttributedIPConversions` (*type:* `boolean()`, *default:* `nil`) - Include conversions that have no cookie, but do have an exposure path.
  *   `includeUnattributedCookieConversions` (*type:* `boolean()`, *default:* `nil`) - Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window.
  *   `includeUnattributedIPConversions` (*type:* `boolean()`, *default:* `nil`) - Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeAttributedIPConversions => boolean() | nil,
          :includeUnattributedCookieConversions => boolean() | nil,
          :includeUnattributedIPConversions => boolean() | nil
        }

  field(:includeAttributedIPConversions)
  field(:includeUnattributedCookieConversions)
  field(:includeUnattributedIPConversions)
end

defimpl Poison.Decoder,
  for: GoogleApi.DFAReporting.V35.Model.ReportFloodlightCriteriaReportProperties do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.ReportFloodlightCriteriaReportProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DFAReporting.V35.Model.ReportFloodlightCriteriaReportProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
