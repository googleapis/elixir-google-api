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

defmodule GoogleApi.Dataproc.V1.Model.ManagedGroupConfig do
  @moduledoc """
  Specifies the resources used to actively manage an instance group.

  ## Attributes

  *   `instanceGroupManagerName` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Instance Group Manager for this group.
  *   `instanceGroupManagerUri` (*type:* `String.t`, *default:* `nil`) - Output only. The partial URI to the instance group manager for this group. E.g. projects/my-project/regions/us-central1/instanceGroupManagers/my-igm.
  *   `instanceTemplateName` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Instance Template used for the Managed Instance Group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceGroupManagerName => String.t() | nil,
          :instanceGroupManagerUri => String.t() | nil,
          :instanceTemplateName => String.t() | nil
        }

  field(:instanceGroupManagerName)
  field(:instanceGroupManagerUri)
  field(:instanceTemplateName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ManagedGroupConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ManagedGroupConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ManagedGroupConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
