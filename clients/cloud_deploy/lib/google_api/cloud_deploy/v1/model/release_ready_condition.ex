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

defmodule GoogleApi.CloudDeploy.V1.Model.ReleaseReadyCondition do
  @moduledoc """
  ReleaseReadyCondition contains information around the status of the Release. If a release is not ready, you cannot create a rollout with the release.

  ## Attributes

  *   `status` (*type:* `boolean()`, *default:* `nil`) - True if the Release is in a valid state. Otherwise at least one condition in `ReleaseCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Release.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :status => boolean() | nil
        }

  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.ReleaseReadyCondition do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.ReleaseReadyCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.ReleaseReadyCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end