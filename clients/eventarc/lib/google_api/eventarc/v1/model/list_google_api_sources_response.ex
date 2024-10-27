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

defmodule GoogleApi.Eventarc.V1.Model.ListGoogleApiSourcesResponse do
  @moduledoc """
  The response message for the `ListGoogleApiSources` method.

  ## Attributes

  *   `googleApiSources` (*type:* `list(GoogleApi.Eventarc.V1.Model.GoogleApiSource.t)`, *default:* `nil`) - The requested GoogleApiSources, up to the number specified in `page_size`.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A page token that can be sent to `ListMessageBusEnrollments` to request the next page. If this is empty, then there are no more pages.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Unreachable resources, if any.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleApiSources => list(GoogleApi.Eventarc.V1.Model.GoogleApiSource.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:googleApiSources, as: GoogleApi.Eventarc.V1.Model.GoogleApiSource, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.ListGoogleApiSourcesResponse do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.ListGoogleApiSourcesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.ListGoogleApiSourcesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
