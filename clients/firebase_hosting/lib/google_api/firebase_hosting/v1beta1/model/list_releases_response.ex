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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.ListReleasesResponse do
  @moduledoc """


  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The pagination token, if more results exist beyond the ones in this response. Include this token in your next call to `ListReleases`. Page tokens are short-lived and should not be stored.
  *   `releases` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.Release.t)`, *default:* `nil`) - The list of hashes of files that still need to be uploaded, if any exist.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :releases => list(GoogleApi.FirebaseHosting.V1beta1.Model.Release.t()) | nil
        }

  field(:nextPageToken)
  field(:releases, as: GoogleApi.FirebaseHosting.V1beta1.Model.Release, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ListReleasesResponse do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.ListReleasesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.ListReleasesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
