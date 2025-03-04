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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress do
  @moduledoc """
  Represents the progress of a sync run.

  ## Attributes

  *   `currentCount` (*type:* `String.t`, *default:* `nil`) - The current progress.
  *   `percentile` (*type:* `integer()`, *default:* `nil`) - Derived. The percentile of the progress.
  *   `totalCount` (*type:* `String.t`, *default:* `nil`) - The total.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentCount => String.t() | nil,
          :percentile => integer() | nil,
          :totalCount => String.t() | nil
        }

  field(:currentCount)
  field(:percentile)
  field(:totalCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
