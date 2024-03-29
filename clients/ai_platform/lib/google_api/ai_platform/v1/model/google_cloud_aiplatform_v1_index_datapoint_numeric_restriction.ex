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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IndexDatapointNumericRestriction do
  @moduledoc """
  This field allows restricts to be based on numeric comparisons rather than categorical tokens.

  ## Attributes

  *   `namespace` (*type:* `String.t`, *default:* `nil`) - The namespace of this restriction. e.g.: cost.
  *   `op` (*type:* `String.t`, *default:* `nil`) - This MUST be specified for queries and must NOT be specified for datapoints.
  *   `valueDouble` (*type:* `float()`, *default:* `nil`) - Represents 64 bit float.
  *   `valueFloat` (*type:* `number()`, *default:* `nil`) - Represents 32 bit float.
  *   `valueInt` (*type:* `String.t`, *default:* `nil`) - Represents 64 bit integer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namespace => String.t() | nil,
          :op => String.t() | nil,
          :valueDouble => float() | nil,
          :valueFloat => number() | nil,
          :valueInt => String.t() | nil
        }

  field(:namespace)
  field(:op)
  field(:valueDouble)
  field(:valueFloat)
  field(:valueInt)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IndexDatapointNumericRestriction do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IndexDatapointNumericRestriction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IndexDatapointNumericRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
