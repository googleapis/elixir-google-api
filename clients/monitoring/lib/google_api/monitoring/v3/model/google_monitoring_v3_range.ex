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

defmodule GoogleApi.Monitoring.V3.Model.GoogleMonitoringV3Range do
  @moduledoc """
  Range of numerical values within min and max. If the open range "< range.max" is desired, set range.min = -infinity. If the open range ">= range.min" is desired, set range.max = infinity.

  ## Attributes

  *   `max` (*type:* `float()`, *default:* `nil`) - Range maximum.
  *   `min` (*type:* `float()`, *default:* `nil`) - Range minimum.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :max => float() | nil,
          :min => float() | nil
        }

  field(:max)
  field(:min)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.GoogleMonitoringV3Range do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.GoogleMonitoringV3Range.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.GoogleMonitoringV3Range do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
