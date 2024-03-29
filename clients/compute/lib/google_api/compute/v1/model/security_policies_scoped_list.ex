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

defmodule GoogleApi.Compute.V1.Model.SecurityPoliciesScopedList do
  @moduledoc """


  ## Attributes

  *   `securityPolicies` (*type:* `list(GoogleApi.Compute.V1.Model.SecurityPolicy.t)`, *default:* `nil`) - A list of SecurityPolicies contained in this scope.
  *   `warning` (*type:* `GoogleApi.Compute.V1.Model.SecurityPoliciesScopedListWarning.t`, *default:* `nil`) - Informational warning which replaces the list of security policies when the list is empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :securityPolicies => list(GoogleApi.Compute.V1.Model.SecurityPolicy.t()) | nil,
          :warning => GoogleApi.Compute.V1.Model.SecurityPoliciesScopedListWarning.t() | nil
        }

  field(:securityPolicies, as: GoogleApi.Compute.V1.Model.SecurityPolicy, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.SecurityPoliciesScopedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SecurityPoliciesScopedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPoliciesScopedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SecurityPoliciesScopedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
