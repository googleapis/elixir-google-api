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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1FieldConstraints do
  @moduledoc """
  Information about any range constraints.

  ## Attributes

  *   `numericRangeConstraint` (*type:* `GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NumericRangeConstraint.t`, *default:* `nil`) - The allowed range for numeric fields.
  *   `uploadedFileConstraints` (*type:* `GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints.t`, *default:* `nil`) - Constraints on the uploaded file of a file policy. If present, this policy requires a URL that can be fetched by uploading a file with the constraints specified in this proto.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numericRangeConstraint =>
            GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NumericRangeConstraint.t()
            | nil,
          :uploadedFileConstraints =>
            GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints.t()
            | nil
        }

  field(:numericRangeConstraint,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NumericRangeConstraint
  )

  field(:uploadedFileConstraints,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1FieldConstraints do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1FieldConstraints.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1FieldConstraints do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
