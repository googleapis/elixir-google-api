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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Failure do
  @moduledoc """
  Describes how a Search Ads 360 API call failed. It's returned inside google.rpc.Status.details when a call fails.

  ## Attributes

  *   `errors` (*type:* `list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error.t)`, *default:* `nil`) - The list of errors that occurred.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the request that is used for debugging purposes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors =>
            list(
              GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error.t()
            )
            | nil,
          :requestId => String.t() | nil
        }

  field(:errors,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error,
    type: :list
  )

  field(:requestId)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Failure do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Failure.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Failure do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
