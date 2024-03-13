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

defmodule GoogleApi.ServiceUsage.V1.Model.ConsumerPolicy do
  @moduledoc """
  Consumer Policy is a set of rules that define what services or service groups can be used for a cloud resource hierarchy.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. [AIP-128](https://google.aip.dev/128#annotations)
  *   `enableRules` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.EnableRule.t)`, *default:* `nil`) - Enable rules define usable services and service groups.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - An opaque tag indicating the current version of the policy, used for concurrency control.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the policy. We only allow consumer policy name as `default` for now: `projects/12345/consumerPolicies/default`, `folders/12345/consumerPolicies/default`, `organizations/12345/consumerPolicies/default`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :enableRules => list(GoogleApi.ServiceUsage.V1.Model.EnableRule.t()) | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:enableRules, as: GoogleApi.ServiceUsage.V1.Model.EnableRule, type: :list)
  field(:etag)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.ConsumerPolicy do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.ConsumerPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.ConsumerPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end