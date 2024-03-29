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

defmodule GoogleApi.Compute.V1.Model.FixedOrPercent do
  @moduledoc """
  Encapsulates numeric value that can be either absolute or relative.

  ## Attributes

  *   `calculated` (*type:* `integer()`, *default:* `nil`) - [Output Only] Absolute value of VM instances calculated based on the specific mode. - If the value is fixed, then the calculated value is equal to the fixed value. - If the value is a percent, then the calculated value is percent/100 * targetSize. For example, the calculated value of a 80% of a managed instance group with 150 instances would be (80/100 * 150) = 120 VM instances. If there is a remainder, the number is rounded. 
  *   `fixed` (*type:* `integer()`, *default:* `nil`) - Specifies a fixed number of VM instances. This must be a positive integer.
  *   `percent` (*type:* `integer()`, *default:* `nil`) - Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calculated => integer() | nil,
          :fixed => integer() | nil,
          :percent => integer() | nil
        }

  field(:calculated)
  field(:fixed)
  field(:percent)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.FixedOrPercent do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.FixedOrPercent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.FixedOrPercent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
