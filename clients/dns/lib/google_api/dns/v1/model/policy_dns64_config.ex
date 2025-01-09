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

defmodule GoogleApi.DNS.V1.Model.PolicyDns64Config do
  @moduledoc """
  DNS64 policies

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dns#policyDns64Config`) - 
  *   `scope` (*type:* `GoogleApi.DNS.V1.Model.PolicyDns64ConfigScope.t`, *default:* `nil`) - The scope to which DNS64 config will be applied to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :scope => GoogleApi.DNS.V1.Model.PolicyDns64ConfigScope.t() | nil
        }

  field(:kind)
  field(:scope, as: GoogleApi.DNS.V1.Model.PolicyDns64ConfigScope)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.PolicyDns64Config do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.PolicyDns64Config.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.PolicyDns64Config do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
