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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityProductProductSiteDataLocaleData do
  @moduledoc """
  Data for one locale.

  ## Attributes

  *   `boostFactor` (*type:* `number()`, *default:* `nil`) - Site boosting multiplier.
  *   `gobiSite` (*type:* `boolean()`, *default:* `nil`) - Whether this is a gobi site, ie, a site from a gobi domain that should be boosted for a category query with this gobi domain. For example, amazon.com is a gobi store domain for category query [hdtv] but some sites (like askville.amazon.com) from amazon.com should not be boosted.
  *   `locale` (*type:* `String.t`, *default:* `nil`) - Locale for this data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostFactor => number() | nil,
          :gobiSite => boolean() | nil,
          :locale => String.t() | nil
        }

  field(:boostFactor)
  field(:gobiSite)
  field(:locale)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityProductProductSiteDataLocaleData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityProductProductSiteDataLocaleData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityProductProductSiteDataLocaleData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
