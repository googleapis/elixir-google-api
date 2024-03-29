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

defmodule GoogleApi.Language.V2.Model.XPSConfusionMatrixRow do
  @moduledoc """
  A row in the confusion matrix.

  ## Attributes

  *   `count` (*type:* `list(String.t)`, *default:* `nil`) - Same as above except intended to represent other counts (for e.g. for segmentation this is pixel count). NOTE(params): Only example_count or count is set (oneoff does not support repeated fields unless they are embedded inside another message).
  *   `exampleCount` (*type:* `list(integer())`, *default:* `nil`) - Value of the specific cell in the confusion matrix. The number of values each row has (i.e. the length of the row) is equal to the length of the annotation_spec_id_token field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => list(String.t()) | nil,
          :exampleCount => list(integer()) | nil
        }

  field(:count, type: :list)
  field(:exampleCount, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSConfusionMatrixRow do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSConfusionMatrixRow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSConfusionMatrixRow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
