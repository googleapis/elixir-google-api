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

defmodule GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretHolderProto do
  @moduledoc """
  Represents a principal which possesses a particular, presumably secret, string. Useful for things like "auth keys," used for anonymous sharing. Since representing this principal with the actual secret included reveals the secret, it's best if the requisite condition is enforced in some other way, for example via Keystore wrapping attributes (Keystore will unwrap only if the specified secret, aka "attribute", is presented). All that's stored here is an identifying label.

  ## Attributes

  *   `label` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretLabelProto.t`, *default:* `nil`) - A descriptive label to help identify a relevant ACL entry or otherwise disambiguate this instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :label =>
            GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretLabelProto.t()
            | nil
        }

  field(:label, as: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretLabelProto)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretHolderProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretHolderProto.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsSimpleSecretHolderProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
