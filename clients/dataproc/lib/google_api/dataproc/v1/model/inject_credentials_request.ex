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

defmodule GoogleApi.Dataproc.V1.Model.InjectCredentialsRequest do
  @moduledoc """
  A request to inject credentials into a cluster.

  ## Attributes

  *   `clusterUuid` (*type:* `String.t`, *default:* `nil`) - Required. The cluster UUID.
  *   `credentialsCiphertext` (*type:* `String.t`, *default:* `nil`) - Required. The encrypted credentials being injected in to the cluster.The client is responsible for encrypting the credentials in a way that is supported by the cluster.A wrapped value is used here so that the actual contents of the encrypted credentials are not written to audit logs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterUuid => String.t() | nil,
          :credentialsCiphertext => String.t() | nil
        }

  field(:clusterUuid)
  field(:credentialsCiphertext)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.InjectCredentialsRequest do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.InjectCredentialsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.InjectCredentialsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
