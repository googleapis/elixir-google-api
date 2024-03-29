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

defmodule GoogleApi.BinaryAuthorization.V1.Model.EvaluateGkePolicyResponse do
  @moduledoc """
  Response message for PlatformPolicyEvaluationService.EvaluateGkePolicy.

  ## Attributes

  *   `results` (*type:* `list(GoogleApi.BinaryAuthorization.V1.Model.PodResult.t)`, *default:* `nil`) - Evaluation result for each Pod contained in the request.
  *   `verdict` (*type:* `String.t`, *default:* `nil`) - The result of evaluating all Pods in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :results => list(GoogleApi.BinaryAuthorization.V1.Model.PodResult.t()) | nil,
          :verdict => String.t() | nil
        }

  field(:results, as: GoogleApi.BinaryAuthorization.V1.Model.PodResult, type: :list)
  field(:verdict)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.EvaluateGkePolicyResponse do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.EvaluateGkePolicyResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.EvaluateGkePolicyResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
