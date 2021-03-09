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

defmodule GoogleApi.Container.V1.Model.ShieldedInstanceConfig do
  @moduledoc """
  A set of Shielded Instance options.

  ## Attributes

  *   `enableIntegrityMonitoring` (*type:* `boolean()`, *default:* `nil`) - Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.
  *   `enableSecureBoot` (*type:* `boolean()`, *default:* `nil`) - Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableIntegrityMonitoring => boolean() | nil,
          :enableSecureBoot => boolean() | nil
        }

  field(:enableIntegrityMonitoring)
  field(:enableSecureBoot)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ShieldedInstanceConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ShieldedInstanceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ShieldedInstanceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
