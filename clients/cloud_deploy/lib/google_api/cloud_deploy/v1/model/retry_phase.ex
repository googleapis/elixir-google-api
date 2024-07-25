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

defmodule GoogleApi.CloudDeploy.V1.Model.RetryPhase do
  @moduledoc """
  RetryPhase contains the retry attempts and the metadata for initiating a new attempt.

  ## Attributes

  *   `attempts` (*type:* `list(GoogleApi.CloudDeploy.V1.Model.RetryAttempt.t)`, *default:* `nil`) - Output only. Detail of a retry action.
  *   `backoffMode` (*type:* `String.t`, *default:* `nil`) - Output only. The pattern of how the wait time of the retry attempt is calculated.
  *   `totalAttempts` (*type:* `String.t`, *default:* `nil`) - Output only. The number of attempts that have been made.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attempts => list(GoogleApi.CloudDeploy.V1.Model.RetryAttempt.t()) | nil,
          :backoffMode => String.t() | nil,
          :totalAttempts => String.t() | nil
        }

  field(:attempts, as: GoogleApi.CloudDeploy.V1.Model.RetryAttempt, type: :list)
  field(:backoffMode)
  field(:totalAttempts)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.RetryPhase do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.RetryPhase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.RetryPhase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
