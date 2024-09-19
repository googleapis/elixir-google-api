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

defmodule GoogleApi.SecurityCenter.V1.Model.AzureTenant do
  @moduledoc """
  Represents a Microsoft Entra tenant.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the Azure tenant.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the Microsoft Entra tenant, for example, "a11aaa11-aa11-1aa1-11aa-1aaa11a".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :id => String.t() | nil
        }

  field(:displayName)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.AzureTenant do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.AzureTenant.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.AzureTenant do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
