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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig do
  @moduledoc """
  The idle shutdown configuration of NotebookRuntimeTemplate, which contains the idle_timeout as required field.

  ## Attributes

  *   `idleShutdownDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether Idle Shutdown is disabled in this NotebookRuntimeTemplate.
  *   `idleTimeout` (*type:* `String.t`, *default:* `nil`) - Required. Duration is accurate to the second. In Notebook, Idle Timeout is accurate to minute so the range of idle_timeout (second) is: 10 * 60 ~ 1440 * 60.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :idleShutdownDisabled => boolean() | nil,
          :idleTimeout => String.t() | nil
        }

  field(:idleShutdownDisabled)
  field(:idleTimeout)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
