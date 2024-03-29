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

defmodule GoogleApi.CloudAsset.V1.Model.AnalyzeMoveResponse do
  @moduledoc """
  The response message for resource move analysis.

  ## Attributes

  *   `moveAnalysis` (*type:* `list(GoogleApi.CloudAsset.V1.Model.MoveAnalysis.t)`, *default:* `nil`) - The list of analyses returned from performing the intended resource move analysis. The analysis is grouped by different Google Cloud services.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :moveAnalysis => list(GoogleApi.CloudAsset.V1.Model.MoveAnalysis.t()) | nil
        }

  field(:moveAnalysis, as: GoogleApi.CloudAsset.V1.Model.MoveAnalysis, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.AnalyzeMoveResponse do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.AnalyzeMoveResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.AnalyzeMoveResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
