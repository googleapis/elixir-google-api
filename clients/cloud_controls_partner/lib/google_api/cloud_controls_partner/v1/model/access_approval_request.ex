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

defmodule GoogleApi.CloudControlsPartner.V1.Model.AccessApprovalRequest do
  @moduledoc """
  Details about the Access request.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Format: `organizations/{organization}/locations/{location}/customers/{customer}/workloads/{workload}/accessApprovalRequests/{access_approval_request}`
  *   `requestTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which approval was requested.
  *   `requestedExpirationTime` (*type:* `DateTime.t`, *default:* `nil`) - The requested expiration for the approval. If the request is approved, access will be granted from the time of approval until the expiration time.
  *   `requestedReason` (*type:* `GoogleApi.CloudControlsPartner.V1.Model.AccessReason.t`, *default:* `nil`) - The justification for which approval is being requested.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :requestTime => DateTime.t() | nil,
          :requestedExpirationTime => DateTime.t() | nil,
          :requestedReason => GoogleApi.CloudControlsPartner.V1.Model.AccessReason.t() | nil
        }

  field(:name)
  field(:requestTime, as: DateTime)
  field(:requestedExpirationTime, as: DateTime)
  field(:requestedReason, as: GoogleApi.CloudControlsPartner.V1.Model.AccessReason)
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.AccessApprovalRequest do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.AccessApprovalRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.AccessApprovalRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
