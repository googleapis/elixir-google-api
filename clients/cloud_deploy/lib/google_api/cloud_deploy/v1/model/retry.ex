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

defmodule GoogleApi.CloudDeploy.V1.Model.Retry do
  @moduledoc """
  Retries the failed job.

  ## Attributes

  *   `attempts` (*type:* `String.t`, *default:* `nil`) - Required. Total number of retries. Retry is skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  *   `backoffMode` (*type:* `String.t`, *default:* `nil`) - Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
  *   `wait` (*type:* `String.t`, *default:* `nil`) - Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attempts => String.t() | nil,
          :backoffMode => String.t() | nil,
          :wait => String.t() | nil
        }

  field(:attempts)
  field(:backoffMode)
  field(:wait)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.Retry do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.Retry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.Retry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
