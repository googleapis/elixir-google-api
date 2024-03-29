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

defmodule GoogleApi.Dataproc.V1.Model.AutoscalingPolicy do
  @moduledoc """
  Describes an autoscaling policy for Dataproc cluster autoscaler.

  ## Attributes

  *   `basicAlgorithm` (*type:* `GoogleApi.Dataproc.V1.Model.BasicAutoscalingAlgorithm.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  *   `secondaryWorkerConfig` (*type:* `GoogleApi.Dataproc.V1.Model.InstanceGroupAutoscalingPolicyConfig.t`, *default:* `nil`) - Optional. Describes how the autoscaler will operate for secondary workers.
  *   `workerConfig` (*type:* `GoogleApi.Dataproc.V1.Model.InstanceGroupAutoscalingPolicyConfig.t`, *default:* `nil`) - Required. Describes how the autoscaler will operate for primary workers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicAlgorithm => GoogleApi.Dataproc.V1.Model.BasicAutoscalingAlgorithm.t() | nil,
          :id => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :secondaryWorkerConfig =>
            GoogleApi.Dataproc.V1.Model.InstanceGroupAutoscalingPolicyConfig.t() | nil,
          :workerConfig =>
            GoogleApi.Dataproc.V1.Model.InstanceGroupAutoscalingPolicyConfig.t() | nil
        }

  field(:basicAlgorithm, as: GoogleApi.Dataproc.V1.Model.BasicAutoscalingAlgorithm)
  field(:id)
  field(:labels, type: :map)
  field(:name)

  field(:secondaryWorkerConfig,
    as: GoogleApi.Dataproc.V1.Model.InstanceGroupAutoscalingPolicyConfig
  )

  field(:workerConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupAutoscalingPolicyConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.AutoscalingPolicy do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.AutoscalingPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.AutoscalingPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
