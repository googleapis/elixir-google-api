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

defmodule GoogleApi.CloudTasks.V2.Model.StackdriverLoggingConfig do
  @moduledoc """
  Configuration options for writing logs to
  [Stackdriver Logging](https://cloud.google.com/logging/docs/).

  ## Attributes

  *   `samplingRatio` (*type:* `float()`, *default:* `nil`) - Specifies the fraction of operations to write to
      [Stackdriver Logging](https://cloud.google.com/logging/docs/).
      This field may contain any value between 0.0 and 1.0, inclusive.
      0.0 is the default and means that no operations are logged.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :samplingRatio => float()
        }

  field(:samplingRatio)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2.Model.StackdriverLoggingConfig do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2.Model.StackdriverLoggingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2.Model.StackdriverLoggingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
