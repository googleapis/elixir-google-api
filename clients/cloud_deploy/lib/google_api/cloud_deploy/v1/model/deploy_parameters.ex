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

defmodule GoogleApi.CloudDeploy.V1.Model.DeployParameters do
  @moduledoc """
  DeployParameters contains deploy parameters information.

  ## Attributes

  *   `matchTargetLabels` (*type:* `map()`, *default:* `nil`) - Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  *   `values` (*type:* `map()`, *default:* `nil`) - Required. Values are deploy parameters in key-value pairs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :matchTargetLabels => map() | nil,
          :values => map() | nil
        }

  field(:matchTargetLabels, type: :map)
  field(:values, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.DeployParameters do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.DeployParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.DeployParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end