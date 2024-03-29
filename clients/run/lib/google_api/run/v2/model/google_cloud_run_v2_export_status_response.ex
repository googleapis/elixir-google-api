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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2ExportStatusResponse do
  @moduledoc """
  ExportStatusResponse contains the status of image export operation, with the status of each image export job.

  ## Attributes

  *   `imageExportStatuses` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2ImageExportStatus.t)`, *default:* `nil`) - The status of each image export job.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - The operation id.
  *   `operationState` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the overall export operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageExportStatuses =>
            list(GoogleApi.Run.V2.Model.GoogleCloudRunV2ImageExportStatus.t()) | nil,
          :operationId => String.t() | nil,
          :operationState => String.t() | nil
        }

  field(:imageExportStatuses,
    as: GoogleApi.Run.V2.Model.GoogleCloudRunV2ImageExportStatus,
    type: :list
  )

  field(:operationId)
  field(:operationState)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2ExportStatusResponse do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2ExportStatusResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2ExportStatusResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
