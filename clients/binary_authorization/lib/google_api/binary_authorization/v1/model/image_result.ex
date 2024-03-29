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

defmodule GoogleApi.BinaryAuthorization.V1.Model.ImageResult do
  @moduledoc """
  Result of evaluating one image.

  ## Attributes

  *   `allowlistResult` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.AllowlistResult.t`, *default:* `nil`) - If the image was exempted by a top-level allow_pattern, contains the allowlist pattern that the image name matched.
  *   `checkSetResult` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.CheckSetResult.t`, *default:* `nil`) - If a check set was evaluated, contains the result of the check set. Empty if there were no check sets.
  *   `explanation` (*type:* `String.t`, *default:* `nil`) - Explanation of this image result. Only populated if no check sets were evaluated.
  *   `imageUri` (*type:* `String.t`, *default:* `nil`) - Image URI from the request.
  *   `verdict` (*type:* `String.t`, *default:* `nil`) - The result of evaluating this image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowlistResult => GoogleApi.BinaryAuthorization.V1.Model.AllowlistResult.t() | nil,
          :checkSetResult => GoogleApi.BinaryAuthorization.V1.Model.CheckSetResult.t() | nil,
          :explanation => String.t() | nil,
          :imageUri => String.t() | nil,
          :verdict => String.t() | nil
        }

  field(:allowlistResult, as: GoogleApi.BinaryAuthorization.V1.Model.AllowlistResult)
  field(:checkSetResult, as: GoogleApi.BinaryAuthorization.V1.Model.CheckSetResult)
  field(:explanation)
  field(:imageUri)
  field(:verdict)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.ImageResult do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.ImageResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.ImageResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
