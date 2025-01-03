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

defmodule GoogleApi.Eventarc.V1.Model.GoogleApiSource do
  @moduledoc """
  A GoogleApiSource represents a subscription of 1P events from a MessageBus.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Resource annotations.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `cryptoKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  *   `destination` (*type:* `String.t`, *default:* `nil`) - Required. Destination is the message bus that the GoogleApiSource is delivering to. It must be point to the full resource name of a MessageBus. Format: "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Resource display name.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. This checksum is computed by the server based on the value of other fields, and might be sent only on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels.
  *   `loggingConfig` (*type:* `GoogleApi.Eventarc.V1.Model.LoggingConfig.t`, *default:* `nil`) - Optional. Config to control Platform logging for the GoogleApiSource.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name of the form projects/{project}/locations/{location}/googleApiSources/{google_api_source}
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :createTime => DateTime.t() | nil,
          :cryptoKeyName => String.t() | nil,
          :destination => String.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :loggingConfig => GoogleApi.Eventarc.V1.Model.LoggingConfig.t() | nil,
          :name => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:createTime, as: DateTime)
  field(:cryptoKeyName)
  field(:destination)
  field(:displayName)
  field(:etag)
  field(:labels, type: :map)
  field(:loggingConfig, as: GoogleApi.Eventarc.V1.Model.LoggingConfig)
  field(:name)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.GoogleApiSource do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.GoogleApiSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.GoogleApiSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
