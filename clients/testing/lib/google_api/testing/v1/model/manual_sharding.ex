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

defmodule GoogleApi.Testing.V1.Model.ManualSharding do
  @moduledoc """
  Shards test cases into the specified groups of packages, classes, and/or methods. With manual sharding enabled, specifying test targets via environment_variables or in InstrumentationTest is invalid.

  ## Attributes

  *   `testTargetsForShard` (*type:* `list(GoogleApi.Testing.V1.Model.TestTargetsForShard.t)`, *default:* `nil`) - Required. Group of packages, classes, and/or test methods to be run for each shard. When any physical devices are selected, the number of test_targets_for_shard must be >= 1 and <= 50. When no physical devices are selected, the number must be >= 1 and <= 500.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :testTargetsForShard => list(GoogleApi.Testing.V1.Model.TestTargetsForShard.t())
        }

  field(:testTargetsForShard, as: GoogleApi.Testing.V1.Model.TestTargetsForShard, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.ManualSharding do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.ManualSharding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.ManualSharding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
