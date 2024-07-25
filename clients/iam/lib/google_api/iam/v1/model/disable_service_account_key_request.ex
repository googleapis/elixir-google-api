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

defmodule GoogleApi.IAM.V1.Model.DisableServiceAccountKeyRequest do
  @moduledoc """
  The service account key disable request.

  ## Attributes

  *   `extendedStatusMessage` (*type:* `String.t`, *default:* `nil`) - Optional. Usable by internal google services only. An extended_status_message can be used to include additional information about the key, such as its private key data being exposed on a public repository like GitHub.
  *   `serviceAccountKeyDisableReason` (*type:* `String.t`, *default:* `nil`) - Optional. Describes the reason this key is being disabled. If unspecified, the default value of SERVICE_ACCOUNT_KEY_DISABLE_REASON_USER_INITIATED will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :extendedStatusMessage => String.t() | nil,
          :serviceAccountKeyDisableReason => String.t() | nil
        }

  field(:extendedStatusMessage)
  field(:serviceAccountKeyDisableReason)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.DisableServiceAccountKeyRequest do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.DisableServiceAccountKeyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.DisableServiceAccountKeyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
