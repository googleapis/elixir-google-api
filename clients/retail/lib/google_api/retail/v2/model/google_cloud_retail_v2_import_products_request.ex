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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportProductsRequest do
  @moduledoc """
  Request message for Import methods.

  ## Attributes

  *   `errorsConfig` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportErrorsConfig.t`, *default:* `nil`) - The desired location of errors incurred during the Import.
  *   `inputConfig` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ProductInputConfig.t`, *default:* `nil`) - Required. The desired input location of the data.
  *   `notificationPubsubTopic` (*type:* `String.t`, *default:* `nil`) - Full Pub/Sub topic name for receiving notification. If this field is set, when the import is finished, a notification will be sent to specified Pub/Sub topic. The message data will be JSON string of a Operation. Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`. It has to be within the same project as ImportProductsRequest.parent. Make sure that `service-@gcp-sa-retail.iam.gserviceaccount.com` has the `pubsub.topics.publish` IAM permission on the topic.
  *   `reconciliationMode` (*type:* `String.t`, *default:* `nil`) - The mode of reconciliation between existing products and the products to be imported. Defaults to ReconciliationMode.INCREMENTAL.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Deprecated. This field has no effect.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Indicates which fields in the provided imported 'products' to update. If not set, will by default update all fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorsConfig =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportErrorsConfig.t() | nil,
          :inputConfig =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ProductInputConfig.t() | nil,
          :notificationPubsubTopic => String.t() | nil,
          :reconciliationMode => String.t() | nil,
          :requestId => String.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:errorsConfig, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportErrorsConfig)
  field(:inputConfig, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ProductInputConfig)
  field(:notificationPubsubTopic)
  field(:reconciliationMode)
  field(:requestId)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportProductsRequest do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportProductsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportProductsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
