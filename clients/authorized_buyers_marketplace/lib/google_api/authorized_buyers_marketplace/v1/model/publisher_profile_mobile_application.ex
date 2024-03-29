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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PublisherProfileMobileApplication do
  @moduledoc """
  A mobile application that contains a external app ID, name, and app store.

  ## Attributes

  *   `appStore` (*type:* `String.t`, *default:* `nil`) - The app store the app belongs to. Can be used to filter the response of the publisherProfiles.list method.
  *   `externalAppId` (*type:* `String.t`, *default:* `nil`) - The external ID for the app from its app store. Can be used to filter the response of the publisherProfiles.list method.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the app.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appStore => String.t() | nil,
          :externalAppId => String.t() | nil,
          :name => String.t() | nil
        }

  field(:appStore)
  field(:externalAppId)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PublisherProfileMobileApplication do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PublisherProfileMobileApplication.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PublisherProfileMobileApplication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
