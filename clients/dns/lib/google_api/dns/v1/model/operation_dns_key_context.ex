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

defmodule GoogleApi.DNS.V1.Model.OperationDnsKeyContext do
  @moduledoc """


  ## Attributes

  *   `newValue` (*type:* `GoogleApi.DNS.V1.Model.DnsKey.t`, *default:* `nil`) - The post-operation DnsKey resource.
  *   `oldValue` (*type:* `GoogleApi.DNS.V1.Model.DnsKey.t`, *default:* `nil`) - The pre-operation DnsKey resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newValue => GoogleApi.DNS.V1.Model.DnsKey.t() | nil,
          :oldValue => GoogleApi.DNS.V1.Model.DnsKey.t() | nil
        }

  field(:newValue, as: GoogleApi.DNS.V1.Model.DnsKey)
  field(:oldValue, as: GoogleApi.DNS.V1.Model.DnsKey)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.OperationDnsKeyContext do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.OperationDnsKeyContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.OperationDnsKeyContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
