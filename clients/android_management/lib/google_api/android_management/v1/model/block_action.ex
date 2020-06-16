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

defmodule GoogleApi.AndroidManagement.V1.Model.BlockAction do
  @moduledoc """
  An action to block access to apps and data on a fully managed device or in a work profile. This action also triggers a device or work profile to displays a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.

  ## Attributes

  *   `blockAfterDays` (*type:* `integer()`, *default:* `nil`) - Number of days the policy is non-compliant before the device or work profile is blocked. To block access immediately, set to 0. blockAfterDays must be less than wipeAfterDays.
  *   `blockScope` (*type:* `String.t`, *default:* `nil`) - Specifies the scope of this BlockAction. Only applicable to devices that are company-owned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockAfterDays => integer(),
          :blockScope => String.t()
        }

  field(:blockAfterDays)
  field(:blockScope)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.BlockAction do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.BlockAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.BlockAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
