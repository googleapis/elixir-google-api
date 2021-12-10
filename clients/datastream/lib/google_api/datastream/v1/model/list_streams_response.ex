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

defmodule GoogleApi.Datastream.V1.Model.ListStreamsResponse do
  @moduledoc """
  Response message for listing streams.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `streams` (*type:* `list(GoogleApi.Datastream.V1.Model.Stream.t)`, *default:* `nil`) - List of streams
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :streams => list(GoogleApi.Datastream.V1.Model.Stream.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:streams, as: GoogleApi.Datastream.V1.Model.Stream, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.ListStreamsResponse do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.ListStreamsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.ListStreamsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
