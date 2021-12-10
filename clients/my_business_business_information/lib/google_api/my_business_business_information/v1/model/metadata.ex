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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.Metadata do
  @moduledoc """
  Additional non-user-editable information about the location.

  ## Attributes

  *   `canDelete` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the location can be deleted using the API.
  *   `canHaveBusinessCalls` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the listing is eligible for business calls.
  *   `canHaveFoodMenus` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the listing is eligible for food menu.
  *   `canModifyServiceList` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the listing can modify the service list.
  *   `canOperateHealthData` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the location can operate on Health data.
  *   `canOperateLocalPost` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the listing can manage local posts.
  *   `canOperateLodgingData` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the location can operate on Lodging data.
  *   `duplicateLocation` (*type:* `String.t`, *default:* `nil`) - Output only. The location resource that this location duplicates.
  *   `hasGoogleUpdated` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the place ID associated with this location has updates that need to be updated or rejected by the client. If this boolean is set, you should call the `getGoogleUpdated` method to lookup information that's needs to be verified.
  *   `hasPendingEdits` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether any of this Location's properties are in the edit pending state.
  *   `mapsUri` (*type:* `String.t`, *default:* `nil`) - Output only. A link to the location on Maps.
  *   `newReviewUri` (*type:* `String.t`, *default:* `nil`) - Output only. A link to the page on Google Search where a customer can leave a review for the location.
  *   `placeId` (*type:* `String.t`, *default:* `nil`) - Output only. If this locationappears on Google Maps, this field is populated with the place ID for the location. This ID can be used in various Places APIs. This field can be set during Create calls, but not for Update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canDelete => boolean() | nil,
          :canHaveBusinessCalls => boolean() | nil,
          :canHaveFoodMenus => boolean() | nil,
          :canModifyServiceList => boolean() | nil,
          :canOperateHealthData => boolean() | nil,
          :canOperateLocalPost => boolean() | nil,
          :canOperateLodgingData => boolean() | nil,
          :duplicateLocation => String.t() | nil,
          :hasGoogleUpdated => boolean() | nil,
          :hasPendingEdits => boolean() | nil,
          :mapsUri => String.t() | nil,
          :newReviewUri => String.t() | nil,
          :placeId => String.t() | nil
        }

  field(:canDelete)
  field(:canHaveBusinessCalls)
  field(:canHaveFoodMenus)
  field(:canModifyServiceList)
  field(:canOperateHealthData)
  field(:canOperateLocalPost)
  field(:canOperateLodgingData)
  field(:duplicateLocation)
  field(:hasGoogleUpdated)
  field(:hasPendingEdits)
  field(:mapsUri)
  field(:newReviewUri)
  field(:placeId)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.Metadata do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.Metadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.Metadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
