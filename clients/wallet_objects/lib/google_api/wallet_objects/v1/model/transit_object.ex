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

defmodule GoogleApi.WalletObjects.V1.Model.TransitObject do
  @moduledoc """


  ## Attributes

  *   `barcode` (*type:* `GoogleApi.WalletObjects.V1.Model.Barcode.t`, *default:* `nil`) - The barcode type and value.
  *   `appLinkData` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkData.t`, *default:* `nil`) - Optional app or website link that will be displayed as a button on the front of the pass. If AppLinkData is provided for the corresponding class only object AppLinkData will be displayed.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The state of the object. This field is used to determine how an object is displayed in the app. For example, an `inactive` object is moved to the "Expired passes" section.
  *   `tripType` (*type:* `String.t`, *default:* `nil`) - Required. The type of trip this transit object represents. Used to determine the pass title and/or which symbol to use between the origin and destination.
  *   `concessionCategory` (*type:* `String.t`, *default:* `nil`) - The concession category for the ticket.
  *   `groupingInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.GroupingInfo.t`, *default:* `nil`) - Information that controls how passes are grouped together.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also use the shorthand version of the RGB triplet which is #rgb, such as `#fc0`.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `deviceContext` (*type:* `GoogleApi.WalletObjects.V1.Model.DeviceContext.t`, *default:* `nil`) - Device context associated with the object.
  *   `ticketLegs` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TicketLeg.t)`, *default:* `nil`) - Each ticket may contain one or more legs. Each leg contains departure and arrival information along with boarding and seating information. If only one leg is to be specified then use the `ticketLeg` field instead. Both `ticketLeg` and `ticketLegs` may not be set.
  *   `passengerNames` (*type:* `String.t`, *default:* `nil`) - The name(s) of the passengers the ticket is assigned to. The above `passengerType` field is meant to give Google context on this field.
  *   `smartTapRedemptionValue` (*type:* `String.t`, *default:* `nil`) - The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. The class level fields `enableSmartTap` and `redemptionIssuers` must also be set up correctly in order for the pass to support Smart Tap. Only ASCII characters are supported.
  *   `purchaseDetails` (*type:* `GoogleApi.WalletObjects.V1.Model.PurchaseDetails.t`, *default:* `nil`) - Purchase details for this ticket.
  *   `ticketStatus` (*type:* `String.t`, *default:* `nil`) - The status of the ticket. For states which affect display, use the `state` field instead.
  *   `classId` (*type:* `String.t`, *default:* `nil`) - Required. The class associated with this object. The class must be of the same type as this object, must already exist, and must be approved. Class IDs should follow the format issuer ID.identifier where the former is issued by Google and latter is chosen by you.
  *   `ticketRestrictions` (*type:* `GoogleApi.WalletObjects.V1.Model.TicketRestrictions.t`, *default:* `nil`) - Information about what kind of restrictions there are on using this ticket. For example, which days of the week it must be used, or which routes are allowed to be taken.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `tripId` (*type:* `String.t`, *default:* `nil`) - This id is used to group tickets together if the user has saved multiple tickets for the same trip.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  *   `activationStatus` (*type:* `GoogleApi.WalletObjects.V1.Model.ActivationStatus.t`, *default:* `nil`) - The activation status for the object. Required if the class has `activationOptions` set.
  *   `hasUsers` (*type:* `boolean()`, *default:* `nil`) - Indicates if the object has users. This field is set by the platform.
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the class, both will be displayed.
  *   `customConcessionCategory` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom concession category to use when `concessionCategory` does not provide the right option. Both `concessionCategory` and `customConcessionCategory` may not be set.
  *   `ticketNumber` (*type:* `String.t`, *default:* `nil`) - The number of the ticket. This is a unique identifier for the ticket in the transit operator's system.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, hero image of the class, if present, will be displayed. If hero image of the class is also not present, nothing will be displayed.
  *   `hasLinkedDevice` (*type:* `boolean()`, *default:* `nil`) - Whether this object is currently linked to a single device. This field is set by the platform when a user saves the object, linking it to their device. Intended for use by select partners. Contact support for additional information.
  *   `customTicketStatus` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom status to use for the ticket status value when `ticketStatus` does not provide the right option. Both `ticketStatus` and `customTicketStatus` may not be set.
  *   `linkedObjectIds` (*type:* `list(String.t)`, *default:* `nil`) - linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, giftcard, transit and boarding pass that should be automatically attached to this transit object. If a user had saved this transit card, then these linked_object_ids would be automatically pushed to the user's wallet (unless they turned off the setting to receive such linked passes). Make sure that objects present in linked_object_ids are already inserted - if not, calls would fail. Once linked, the linked objects cannot be unlinked. You cannot link objects belonging to another issuer. There is a limit to the number of objects that can be linked to a single object. After the limit is reached, new linked objects in the call will be ignored silently. Object IDs should follow the format issuer ID. identifier where the former is issued by Google and the latter is chosen by you.
  *   `disableExpirationNotification` (*type:* `boolean()`, *default:* `nil`) - Indicates if notifications should explicitly be suppressed. If this field is set to true, regardless of the `messages` field, expiration notifications to the user will be suppressed. By default, this field is set to false. Currently, this can only be set for offers.
  *   `passConstraints` (*type:* `GoogleApi.WalletObjects.V1.Model.PassConstraints.t`, *default:* `nil`) - Pass constraints for the object. Includes limiting NFC and screenshot behaviors.
  *   `rotatingBarcode` (*type:* `GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t`, *default:* `nil`) - The rotating barcode type and value.
  *   `classReference` (*type:* `GoogleApi.WalletObjects.V1.Model.TransitClass.t`, *default:* `nil`) - A copy of the inherited fields of the parent class. These fields are retrieved during a GET.
  *   `passengerType` (*type:* `String.t`, *default:* `nil`) - The number of passengers.
  *   `validTimeInterval` (*type:* `GoogleApi.WalletObjects.V1.Model.TimeInterval.t`, *default:* `nil`) - The time period this object will be `active` and object can be used. An object's state will be changed to `expired` when this time period has passed.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should follow the format issuer ID.identifier where the former is issued by Google and latter is chosen by you. The unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  *   `ticketLeg` (*type:* `GoogleApi.WalletObjects.V1.Model.TicketLeg.t`, *default:* `nil`) - A single ticket leg contains departure and arrival information along with boarding and seating information. If more than one leg is to be specified then use the `ticketLegs` field instead. Both `ticketLeg` and `ticketLegs` may not be set.
  *   `saveRestrictions` (*type:* `GoogleApi.WalletObjects.V1.Model.SaveRestrictions.t`, *default:* `nil`) - Restrictions on the object that needs to be verified before the user tries to save the pass. Note that this restrictions will only be applied during save time. If the restrictions changed after a user saves the pass, the new restrictions will not be applied to an already saved pass.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :barcode => GoogleApi.WalletObjects.V1.Model.Barcode.t() | nil,
          :appLinkData => GoogleApi.WalletObjects.V1.Model.AppLinkData.t() | nil,
          :state => String.t() | nil,
          :tripType => String.t() | nil,
          :concessionCategory => String.t() | nil,
          :groupingInfo => GoogleApi.WalletObjects.V1.Model.GroupingInfo.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :deviceContext => GoogleApi.WalletObjects.V1.Model.DeviceContext.t() | nil,
          :ticketLegs => list(GoogleApi.WalletObjects.V1.Model.TicketLeg.t()) | nil,
          :passengerNames => String.t() | nil,
          :smartTapRedemptionValue => String.t() | nil,
          :purchaseDetails => GoogleApi.WalletObjects.V1.Model.PurchaseDetails.t() | nil,
          :ticketStatus => String.t() | nil,
          :classId => String.t() | nil,
          :ticketRestrictions => GoogleApi.WalletObjects.V1.Model.TicketRestrictions.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :tripId => String.t() | nil,
          :version => String.t() | nil,
          :activationStatus => GoogleApi.WalletObjects.V1.Model.ActivationStatus.t() | nil,
          :hasUsers => boolean() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :customConcessionCategory => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :ticketNumber => String.t() | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :hasLinkedDevice => boolean() | nil,
          :customTicketStatus => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :linkedObjectIds => list(String.t()) | nil,
          :disableExpirationNotification => boolean() | nil,
          :passConstraints => GoogleApi.WalletObjects.V1.Model.PassConstraints.t() | nil,
          :rotatingBarcode => GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t() | nil,
          :classReference => GoogleApi.WalletObjects.V1.Model.TransitClass.t() | nil,
          :passengerType => String.t() | nil,
          :validTimeInterval => GoogleApi.WalletObjects.V1.Model.TimeInterval.t() | nil,
          :id => String.t() | nil,
          :ticketLeg => GoogleApi.WalletObjects.V1.Model.TicketLeg.t() | nil,
          :saveRestrictions => GoogleApi.WalletObjects.V1.Model.SaveRestrictions.t() | nil
        }

  field(:barcode, as: GoogleApi.WalletObjects.V1.Model.Barcode)
  field(:appLinkData, as: GoogleApi.WalletObjects.V1.Model.AppLinkData)
  field(:state)
  field(:tripType)
  field(:concessionCategory)
  field(:groupingInfo, as: GoogleApi.WalletObjects.V1.Model.GroupingInfo)
  field(:hexBackgroundColor)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:deviceContext, as: GoogleApi.WalletObjects.V1.Model.DeviceContext)
  field(:ticketLegs, as: GoogleApi.WalletObjects.V1.Model.TicketLeg, type: :list)
  field(:passengerNames)
  field(:smartTapRedemptionValue)
  field(:purchaseDetails, as: GoogleApi.WalletObjects.V1.Model.PurchaseDetails)
  field(:ticketStatus)
  field(:classId)
  field(:ticketRestrictions, as: GoogleApi.WalletObjects.V1.Model.TicketRestrictions)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:tripId)
  field(:version)
  field(:activationStatus, as: GoogleApi.WalletObjects.V1.Model.ActivationStatus)
  field(:hasUsers)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:customConcessionCategory, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:ticketNumber)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:hasLinkedDevice)
  field(:customTicketStatus, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:linkedObjectIds, type: :list)
  field(:disableExpirationNotification)
  field(:passConstraints, as: GoogleApi.WalletObjects.V1.Model.PassConstraints)
  field(:rotatingBarcode, as: GoogleApi.WalletObjects.V1.Model.RotatingBarcode)
  field(:classReference, as: GoogleApi.WalletObjects.V1.Model.TransitClass)
  field(:passengerType)
  field(:validTimeInterval, as: GoogleApi.WalletObjects.V1.Model.TimeInterval)
  field(:id)
  field(:ticketLeg, as: GoogleApi.WalletObjects.V1.Model.TicketLeg)
  field(:saveRestrictions, as: GoogleApi.WalletObjects.V1.Model.SaveRestrictions)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.TransitObject do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.TransitObject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.TransitObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
