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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest do
  @moduledoc """
  Request message for ProvisionAccountTicket RPC.

  ## Attributes

  *   `account` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.t`, *default:* `nil`) - The account to create.
  *   `redirectUri` (*type:* `String.t`, *default:* `nil`) - Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in Cloud Console as a Redirect URI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.t() | nil,
          :redirectUri => String.t() | nil
        }

  field(:account, as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount)
  field(:redirectUri)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
