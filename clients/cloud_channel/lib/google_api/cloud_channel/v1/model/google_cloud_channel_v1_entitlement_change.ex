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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1EntitlementChange do
  @moduledoc """
  Change event entry for Entitlement order history

  ## Attributes

  *   `activationReason` (*type:* `String.t`, *default:* `nil`) - The Entitlement's activation reason
  *   `cancellationReason` (*type:* `String.t`, *default:* `nil`) - Cancellation reason for the Entitlement.
  *   `changeType` (*type:* `String.t`, *default:* `nil`) - The change action type.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The submitted time of the change.
  *   `entitlement` (*type:* `String.t`, *default:* `nil`) - Required. Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  *   `offer` (*type:* `String.t`, *default:* `nil`) - Required. Resource name of the Offer at the time of change. Takes the form: accounts/{account_id}/offers/{offer_id}.
  *   `operator` (*type:* `String.t`, *default:* `nil`) - Human-readable identifier that shows what operator made a change. When the operator_type is RESELLER, this is the user's email address. For all other operator types, this is empty.
  *   `operatorType` (*type:* `String.t`, *default:* `nil`) - Operator type responsible for the change.
  *   `otherChangeReason` (*type:* `String.t`, *default:* `nil`) - e.g. purchase_number change reason, entered by CRS.
  *   `parameters` (*type:* `list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter.t)`, *default:* `nil`) - Extended parameters, such as: purchase_order_number, gcp_details; internal_correlation_id, long_running_operation_id, order_id; etc.
  *   `provisionedService` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionedService.t`, *default:* `nil`) - Service provisioned for an Entitlement.
  *   `suspensionReason` (*type:* `String.t`, *default:* `nil`) - Suspension reason for the Entitlement.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationReason => String.t() | nil,
          :cancellationReason => String.t() | nil,
          :changeType => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :entitlement => String.t() | nil,
          :offer => String.t() | nil,
          :operator => String.t() | nil,
          :operatorType => String.t() | nil,
          :otherChangeReason => String.t() | nil,
          :parameters =>
            list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter.t()) | nil,
          :provisionedService =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionedService.t() | nil,
          :suspensionReason => String.t() | nil
        }

  field(:activationReason)
  field(:cancellationReason)
  field(:changeType)
  field(:createTime, as: DateTime)
  field(:entitlement)
  field(:offer)
  field(:operator)
  field(:operatorType)
  field(:otherChangeReason)

  field(:parameters,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter,
    type: :list
  )

  field(:provisionedService,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ProvisionedService
  )

  field(:suspensionReason)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1EntitlementChange do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1EntitlementChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1EntitlementChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end