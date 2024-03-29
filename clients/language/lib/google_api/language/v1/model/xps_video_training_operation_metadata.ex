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

defmodule GoogleApi.Language.V1.Model.XPSVideoTrainingOperationMetadata do
  @moduledoc """


  ## Attributes

  *   `trainCostMilliNodeHour` (*type:* `String.t`, *default:* `nil`) - This is an estimation of the node hours necessary for training a model, expressed in milli node hours (i.e. 1,000 value in this field means 1 node hour). A node hour represents the time a virtual machine spends running your training job. The cost of one node running for one hour is a node hour.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :trainCostMilliNodeHour => String.t() | nil
        }

  field(:trainCostMilliNodeHour)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSVideoTrainingOperationMetadata do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSVideoTrainingOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSVideoTrainingOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
