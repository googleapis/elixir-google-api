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

defmodule GoogleApi.ServiceUsage.V1.Model.ServiceIdentity do
  @moduledoc """
  Service identity for a service. This is the identity that service producer should use to access consumer resources.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - The email address of the service account that a service producer would use to access consumer resources.
  *   `uniqueId` (*type:* `String.t`, *default:* `nil`) - The unique and stable id of the service account. https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts#ServiceAccount
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :uniqueId => String.t() | nil
        }

  field(:email)
  field(:uniqueId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.ServiceIdentity do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.ServiceIdentity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.ServiceIdentity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
