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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey do
  @moduledoc """
  The key used to identify the target on which the policy will be applied.

  ## Attributes

  *   `additionalTargetKeys` (*type:* `map()`, *default:* `nil`) - Map containing the additional target key name and value pairs used to further identify the target of the policy.
  *   `targetResource` (*type:* `String.t`, *default:* `nil`) - The target resource on which this policy is applied. The following resources are supported: * Organizational Unit ("orgunits/{orgunit_id}")
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalTargetKeys => map() | nil,
          :targetResource => String.t() | nil
        }

  field(:additionalTargetKeys, type: :map)
  field(:targetResource)
end

defimpl Poison.Decoder, for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicyTargetKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
