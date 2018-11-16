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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting do
  @moduledoc """
  Represents targeting about where the ads can appear, e.g., certain sites or mobile applications. Different placement targeting types will be logically OR&#39;ed.

  ## Attributes

  - mobileApplicationTargeting (MobileApplicationTargeting): Mobile application targeting information in a deal. This doesn&#39;t apply to Auction Packages. Defaults to: `null`.
  - urlTargeting (UrlTargeting): URLs to be included/excluded. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mobileApplicationTargeting =>
            GoogleApi.AdExchangeBuyer.V2beta1.Model.MobileApplicationTargeting.t(),
          :urlTargeting => GoogleApi.AdExchangeBuyer.V2beta1.Model.UrlTargeting.t()
        }

  field(:mobileApplicationTargeting,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.MobileApplicationTargeting
  )

  field(:urlTargeting, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.UrlTargeting)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PlacementTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
