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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo do
  @moduledoc """
  Detail description of the source information of the model.

  ## Attributes

  *   `copy` (*type:* `boolean()`, *default:* `nil`) - If this Model is copy of another Model. If true then source_type pertains to the original.
  *   `sourceType` (*type:* `String.t`, *default:* `nil`) - Type of the model source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :copy => boolean() | nil,
          :sourceType => String.t() | nil
        }

  field(:copy)
  field(:sourceType)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelSourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
