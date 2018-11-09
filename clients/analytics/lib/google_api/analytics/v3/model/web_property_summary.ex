# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Analytics.V3.Model.WebPropertySummary do
  @moduledoc """
  JSON template for an Analytics WebPropertySummary. WebPropertySummary returns basic information (i.e., summary) for a web property.

  ## Attributes

  - id (String.t): Web property ID of the form UA-XXXXX-YY. Defaults to: `null`.
  - internalWebPropertyId (String.t): Internal ID for this web property. Defaults to: `null`.
  - kind (String.t): Resource type for Analytics WebPropertySummary. Defaults to: `null`.
  - level (String.t): Level for this web property. Possible values are STANDARD or PREMIUM. Defaults to: `null`.
  - name (String.t): Web property name. Defaults to: `null`.
  - profiles ([ProfileSummary]): List of profiles under this web property. Defaults to: `null`.
  - starred (boolean()): Indicates whether this web property is starred or not. Defaults to: `null`.
  - websiteUrl (String.t): Website url for this web property. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :internalWebPropertyId => any(),
          :kind => any(),
          :level => any(),
          :name => any(),
          :profiles => list(GoogleApi.Analytics.V3.Model.ProfileSummary.t()),
          :starred => any(),
          :websiteUrl => any()
        }

  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:level)
  field(:name)
  field(:profiles, as: GoogleApi.Analytics.V3.Model.ProfileSummary, type: :list)
  field(:starred)
  field(:websiteUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.WebPropertySummary do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.WebPropertySummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.WebPropertySummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
