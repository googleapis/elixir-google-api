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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Product do
  @moduledoc """
  A Products resource represents an app in the Google Play store that is available to at least some users in the enterprise. (Some apps are restricted to a single enterprise, and no information about them is made available outside that enterprise.)

  The information provided for each product (localized name, icon, link to the full Google Play details page) is intended to allow a basic representation of the product within an EMM user interface.

  ## Attributes

  - appTracks (list(GoogleApi.AndroidEnterprise.V1.Model.TrackInfo.t)): The tracks visible to the enterprise. Defaults to `nil`.
  - appVersion (list(GoogleApi.AndroidEnterprise.V1.Model.AppVersion.t)): App versions currently available for this product. Defaults to `nil`.
  - authorName (String.t): The name of the author of the product (for example, the app developer). Defaults to `nil`.
  - availableCountries (list(String.t)): The countries which this app is available in. Defaults to `nil`.
  - availableTracks (list(String.t)): Deprecated, use appTracks instead. Defaults to `nil`.
  - category (String.t): The app category (e.g. RACING, SOCIAL, etc.) Defaults to `nil`.
  - contentRating (String.t): The content rating for this app. Defaults to `nil`.
  - description (String.t): The localized promotional description, if available. Defaults to `nil`.
  - detailsUrl (String.t): A link to the (consumer) Google Play details page for the product. Defaults to `nil`.
  - distributionChannel (String.t): How and to whom the package is made available. The value publicGoogleHosted means that the package is available through the Play store and not restricted to a specific enterprise. The value privateGoogleHosted means that the package is a private app (restricted to an enterprise) but hosted by Google. The value privateSelfHosted means that the package is a private app (restricted to an enterprise) and is privately hosted. Defaults to `nil`.
  - iconUrl (String.t): A link to an image that can be used as an icon for the product. This image is suitable for use at up to 512px x 512px. Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "androidenterprise#product". Defaults to `androidenterprise#product`.
  - lastUpdatedTimestampMillis (String.t): The approximate time (within 7 days) the app was last published, expressed in milliseconds since epoch. Defaults to `nil`.
  - minAndroidSdkVersion (integer()): The minimum Android SDK necessary to run the app. Defaults to `nil`.
  - permissions (list(GoogleApi.AndroidEnterprise.V1.Model.ProductPermission.t)): A list of permissions required by the app. Defaults to `nil`.
  - productId (String.t): A string of the form app:<package name>. For example, app:com.google.android.gm represents the Gmail app. Defaults to `nil`.
  - productPricing (String.t): Whether this product is free, free with in-app purchases, or paid. If the pricing is unknown, this means the product is not generally available anymore (even though it might still be available to people who own it). Defaults to `nil`.
  - recentChanges (String.t): A description of the recent changes made to the app. Defaults to `nil`.
  - requiresContainerApp (boolean()): Deprecated. Defaults to `nil`.
  - screenshotUrls (list(String.t)): A list of screenshot links representing the app. Defaults to `nil`.
  - signingCertificate (GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate.t): The certificate used to sign this product. Defaults to `nil`.
  - smallIconUrl (String.t): A link to a smaller image that can be used as an icon for the product. This image is suitable for use at up to 128px x 128px. Defaults to `nil`.
  - title (String.t): The name of the product. Defaults to `nil`.
  - workDetailsUrl (String.t): A link to the managed Google Play details page for the product, for use by an Enterprise admin. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appTracks => list(GoogleApi.AndroidEnterprise.V1.Model.TrackInfo.t()),
          :appVersion => list(GoogleApi.AndroidEnterprise.V1.Model.AppVersion.t()),
          :authorName => String.t(),
          :availableCountries => list(String.t()),
          :availableTracks => list(String.t()),
          :category => String.t(),
          :contentRating => String.t(),
          :description => String.t(),
          :detailsUrl => String.t(),
          :distributionChannel => String.t(),
          :iconUrl => String.t(),
          :kind => String.t(),
          :lastUpdatedTimestampMillis => String.t(),
          :minAndroidSdkVersion => integer(),
          :permissions => list(GoogleApi.AndroidEnterprise.V1.Model.ProductPermission.t()),
          :productId => String.t(),
          :productPricing => String.t(),
          :recentChanges => String.t(),
          :requiresContainerApp => boolean(),
          :screenshotUrls => list(String.t()),
          :signingCertificate =>
            GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate.t(),
          :smallIconUrl => String.t(),
          :title => String.t(),
          :workDetailsUrl => String.t()
        }

  field(:appTracks, as: GoogleApi.AndroidEnterprise.V1.Model.TrackInfo, type: :list)
  field(:appVersion, as: GoogleApi.AndroidEnterprise.V1.Model.AppVersion, type: :list)
  field(:authorName)
  field(:availableCountries, type: :list)
  field(:availableTracks, type: :list)
  field(:category)
  field(:contentRating)
  field(:description)
  field(:detailsUrl)
  field(:distributionChannel)
  field(:iconUrl)
  field(:kind)
  field(:lastUpdatedTimestampMillis)
  field(:minAndroidSdkVersion)
  field(:permissions, as: GoogleApi.AndroidEnterprise.V1.Model.ProductPermission, type: :list)
  field(:productId)
  field(:productPricing)
  field(:recentChanges)
  field(:requiresContainerApp)
  field(:screenshotUrls, type: :list)
  field(:signingCertificate, as: GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate)
  field(:smallIconUrl)
  field(:title)
  field(:workDetailsUrl)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Product do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
