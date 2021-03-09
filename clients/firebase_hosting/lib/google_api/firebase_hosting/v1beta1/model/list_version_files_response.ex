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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.ListVersionFilesResponse do
  @moduledoc """


  ## Attributes

  *   `files` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.VersionFile.t)`, *default:* `nil`) -  The list of paths to the hashes of the files in the specified version.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The pagination token, if more results exist beyond the ones in this response. Include this token in your next call to `ListVersionFiles`. Page tokens are short-lived and should not be stored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :files => list(GoogleApi.FirebaseHosting.V1beta1.Model.VersionFile.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:files, as: GoogleApi.FirebaseHosting.V1beta1.Model.VersionFile, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ListVersionFilesResponse do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.ListVersionFilesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ListVersionFilesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
