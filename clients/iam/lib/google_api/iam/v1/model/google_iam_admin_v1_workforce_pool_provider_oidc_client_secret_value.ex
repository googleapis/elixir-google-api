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

defmodule GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue do
  @moduledoc """
  Representation of the value of the client secret.

  ## Attributes

  *   `plainText` (*type:* `String.t`, *default:* `nil`) - Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  *   `thumbprint` (*type:* `String.t`, *default:* `nil`) - Output only. A thumbprint to represent the current client secret value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :plainText => String.t() | nil,
          :thumbprint => String.t() | nil
        }

  field(:plainText)
  field(:thumbprint)
end

defimpl Poison.Decoder,
  for: GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IAM.V1.Model.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
