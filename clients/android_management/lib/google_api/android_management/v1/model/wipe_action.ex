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

defmodule GoogleApi.AndroidManagement.V1.Model.WipeAction do
  @moduledoc """
  An action to reset a company owned device or delete a work profile. Note: blockAction must also be specified.

  ## Attributes

  *   `preserveFrp` (*type:* `boolean()`, *default:* `nil`) - Whether the factory-reset protection data is preserved on the device. This setting doesn’t apply to work profiles.
  *   `wipeAfterDays` (*type:* `integer()`, *default:* `nil`) - Number of days the policy is non-compliant before the device or work profile is wiped. wipeAfterDays must be greater than blockAfterDays.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :preserveFrp => boolean() | nil,
          :wipeAfterDays => integer() | nil
        }

  field(:preserveFrp)
  field(:wipeAfterDays)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.WipeAction do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.WipeAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.WipeAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
