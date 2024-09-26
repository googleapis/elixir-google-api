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

defmodule GoogleApi.PubSub.V1.Model.CloudStorage do
  @moduledoc """
  Ingestion settings for Cloud Storage.

  ## Attributes

  *   `avroFormat` (*type:* `GoogleApi.PubSub.V1.Model.AvroFormat.t`, *default:* `nil`) - Optional. Data from Cloud Storage will be interpreted in Avro format.
  *   `bucket` (*type:* `String.t`, *default:* `nil`) - Optional. Cloud Storage bucket. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  *   `matchGlob` (*type:* `String.t`, *default:* `nil`) - Optional. Glob pattern used to match objects that will be ingested. If unset, all objects will be ingested. See the [supported patterns](https://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob).
  *   `minimumObjectCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Only objects with a larger or equal creation timestamp will be ingested.
  *   `pubsubAvroFormat` (*type:* `GoogleApi.PubSub.V1.Model.PubSubAvroFormat.t`, *default:* `nil`) - Optional. It will be assumed data from Cloud Storage was written via [Cloud Storage subscriptions](https://cloud.google.com/pubsub/docs/cloudstorage).
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. An output-only field that indicates the state of the Cloud Storage ingestion source.
  *   `textFormat` (*type:* `GoogleApi.PubSub.V1.Model.TextFormat.t`, *default:* `nil`) - Optional. Data from Cloud Storage will be interpreted as text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avroFormat => GoogleApi.PubSub.V1.Model.AvroFormat.t() | nil,
          :bucket => String.t() | nil,
          :matchGlob => String.t() | nil,
          :minimumObjectCreateTime => DateTime.t() | nil,
          :pubsubAvroFormat => GoogleApi.PubSub.V1.Model.PubSubAvroFormat.t() | nil,
          :state => String.t() | nil,
          :textFormat => GoogleApi.PubSub.V1.Model.TextFormat.t() | nil
        }

  field(:avroFormat, as: GoogleApi.PubSub.V1.Model.AvroFormat)
  field(:bucket)
  field(:matchGlob)
  field(:minimumObjectCreateTime, as: DateTime)
  field(:pubsubAvroFormat, as: GoogleApi.PubSub.V1.Model.PubSubAvroFormat)
  field(:state)
  field(:textFormat, as: GoogleApi.PubSub.V1.Model.TextFormat)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.CloudStorage do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.CloudStorage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.CloudStorage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
