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

defmodule GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership do
  @moduledoc """
  Details about whether the binding includes the member.

  ## Attributes

  *   `membership` (*type:* `String.t`, *default:* `nil`) - Indicates whether the binding includes the member.
  *   `relevance` (*type:* `String.t`, *default:* `nil`) - The relevance of the member's status to the overall determination for the
      binding.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :membership => String.t(),
          :relevance => String.t()
        }

  field(:membership)
  field(:relevance)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership do
  def decode(value, options) do
    GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PolicyTroubleshooter.V1.Model.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
