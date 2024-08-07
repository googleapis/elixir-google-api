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

defmodule GoogleApi.Batch.V1.Model.InstancePolicyOrTemplate do
  @moduledoc """
  InstancePolicyOrTemplate lets you define the type of resources to use for this job either with an InstancePolicy or an instance template. If undefined, Batch picks the type of VM to use and doesn't include optional VM resources such as GPUs and extra disks.

  ## Attributes

  *   `installGpuDrivers` (*type:* `boolean()`, *default:* `nil`) - Set this field true if you want Batch to help fetch drivers from a third party location and install them for GPUs specified in `policy.accelerators` or `instance_template` on your behalf. Default is false. For Container-Optimized Image cases, Batch will install the accelerator driver following milestones of https://cloud.google.com/container-optimized-os/docs/release-notes. For non Container-Optimized Image cases, following https://github.com/GoogleCloudPlatform/compute-gpu-installation/blob/main/linux/install_gpu_driver.py.
  *   `installOpsAgent` (*type:* `boolean()`, *default:* `nil`) - Optional. Set this field true if you want Batch to install Ops Agent on your behalf. Default is false.
  *   `instanceTemplate` (*type:* `String.t`, *default:* `nil`) - Name of an instance template used to create VMs. Named the field as 'instance_template' instead of 'template' to avoid c++ keyword conflict.
  *   `policy` (*type:* `GoogleApi.Batch.V1.Model.InstancePolicy.t`, *default:* `nil`) - InstancePolicy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :installGpuDrivers => boolean() | nil,
          :installOpsAgent => boolean() | nil,
          :instanceTemplate => String.t() | nil,
          :policy => GoogleApi.Batch.V1.Model.InstancePolicy.t() | nil
        }

  field(:installGpuDrivers)
  field(:installOpsAgent)
  field(:instanceTemplate)
  field(:policy, as: GoogleApi.Batch.V1.Model.InstancePolicy)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.InstancePolicyOrTemplate do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.InstancePolicyOrTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.InstancePolicyOrTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
