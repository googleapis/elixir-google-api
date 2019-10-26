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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Condition do
  @moduledoc """
  Condition defines a generic condition for a Resource

  ## Attributes

  *   `lastTransitionTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Last time the condition transitioned from one status to another.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Optional. Human readable message indicating details about the current status.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Optional. One-word CamelCase reason for the condition's last transition.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Optional. How to interpret failures of this condition, one of Error, Warning, Info
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the condition, one of True, False, Unknown.
  *   `type` (*type:* `String.t`, *default:* `nil`) - type is used to communicate the status of the reconciliation process.
      See also:
      https://github.com/knative/serving/blob/master/docs/spec/errors.md#error-conditions-and-reporting
      Types common to all resources include:
      * "Ready": True when the Resource is ready.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastTransitionTime => DateTime.t(),
          :message => String.t(),
          :reason => String.t(),
          :severity => String.t(),
          :status => String.t(),
          :type => String.t()
        }

  field(:lastTransitionTime, as: DateTime)
  field(:message)
  field(:reason)
  field(:severity)
  field(:status)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Condition do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Condition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Condition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
