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

defmodule GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseResponse do
  @moduledoc """
  Response message for `UploadRelease`.

  ## Attributes

  *   `release` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Release.t`, *default:* `nil`) - Release associated with the uploaded binary.
  *   `result` (*type:* `String.t`, *default:* `nil`) - Result of upload release.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :release =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Release.t() | nil,
          :result => String.t() | nil
        }

  field(:release, as: GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1Release)
  field(:result)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseResponse do
  def decode(value, options) do
    GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
