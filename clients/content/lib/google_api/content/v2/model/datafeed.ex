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

defmodule GoogleApi.Content.V2.Model.Datafeed do
  @moduledoc """
  Datafeed configuration data.

  ## Attributes

  - attributeLanguage (String.t): The two-letter ISO 639-1 language in which the attributes are defined in the data feed. Defaults to: `null`.
  - contentLanguage (String.t): [DEPRECATED] Please use targets[].language instead. The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for targetCountry. Defaults to: `null`.
  - contentType (String.t): The type of data feed. For product inventory feeds, only feeds for local stores, not online stores, are supported. Defaults to: `null`.
  - fetchSchedule (DatafeedFetchSchedule): Fetch schedule for the feed file. Defaults to: `null`.
  - fileName (String.t): The filename of the feed. All feeds must have a unique file name. Defaults to: `null`.
  - format (DatafeedFormat): Format of the feed file. Defaults to: `null`.
  - id (String.t): The ID of the data feed. Defaults to: `null`.
  - intendedDestinations ([String.t]): [DEPRECATED] Please use targets[].includedDestinations instead. The list of intended destinations (corresponds to checked check boxes in Merchant Center). Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;content#datafeed\&quot;. Defaults to: `null`.
  - name (String.t): A descriptive name of the data feed. Defaults to: `null`.
  - targetCountry (String.t): [DEPRECATED] Please use targets[].country instead. The country where the items in the feed will be included in the search index, represented as a CLDR territory code. Defaults to: `null`.
  - targets ([DatafeedTarget]): The targets this feed should apply to (country, language, destinations). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeLanguage => any(),
          :contentLanguage => any(),
          :contentType => any(),
          :fetchSchedule => GoogleApi.Content.V2.Model.DatafeedFetchSchedule.t(),
          :fileName => any(),
          :format => GoogleApi.Content.V2.Model.DatafeedFormat.t(),
          :id => any(),
          :intendedDestinations => list(any()),
          :kind => any(),
          :name => any(),
          :targetCountry => any(),
          :targets => list(GoogleApi.Content.V2.Model.DatafeedTarget.t())
        }

  field(:attributeLanguage)
  field(:contentLanguage)
  field(:contentType)
  field(:fetchSchedule, as: GoogleApi.Content.V2.Model.DatafeedFetchSchedule)
  field(:fileName)
  field(:format, as: GoogleApi.Content.V2.Model.DatafeedFormat)
  field(:id)
  field(:intendedDestinations, type: :list)
  field(:kind)
  field(:name)
  field(:targetCountry)
  field(:targets, as: GoogleApi.Content.V2.Model.DatafeedTarget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Datafeed do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Datafeed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Datafeed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
