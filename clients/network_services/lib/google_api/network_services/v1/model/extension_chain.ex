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

defmodule GoogleApi.NetworkServices.V1.Model.ExtensionChain do
  @moduledoc """
  A single extension chain wrapper that contains the match conditions and extensions to execute.

  ## Attributes

  *   `extensions` (*type:* `list(GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension.t)`, *default:* `nil`) - Required. A set of extensions to execute for the matching request. At least one extension is required. Up to 3 extensions can be defined for each extension chain for `LbTrafficExtension` resource. `LbRouteExtension` chains are limited to 1 extension per extension chain.
  *   `matchCondition` (*type:* `GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition.t`, *default:* `nil`) - Required. Conditions under which this chain is invoked for a request.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name for this extension chain. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :extensions =>
            list(GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension.t()) | nil,
          :matchCondition =>
            GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition.t() | nil,
          :name => String.t() | nil
        }

  field(:extensions, as: GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension, type: :list)
  field(:matchCondition, as: GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ExtensionChain do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ExtensionChain.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ExtensionChain do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end