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

defmodule GoogleApi.Redis.V1.Model.GoogleCloudRedisV1OperationMetadata do
  @moduledoc """
  Represents the v1 metadata of the long-running operation.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - API version.
  *   `cancelRequested` (*type:* `boolean()`, *default:* `nil`) - Specifies if cancellation was requested for the operation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation timestamp.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End timestamp.
  *   `statusDetail` (*type:* `String.t`, *default:* `nil`) - Operation status details.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Operation target.
  *   `verb` (*type:* `String.t`, *default:* `nil`) - Operation verb.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t() | nil,
          :cancelRequested => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :statusDetail => String.t() | nil,
          :target => String.t() | nil,
          :verb => String.t() | nil
        }

  field(:apiVersion)
  field(:cancelRequested)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:statusDetail)
  field(:target)
  field(:verb)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.GoogleCloudRedisV1OperationMetadata do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.GoogleCloudRedisV1OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.GoogleCloudRedisV1OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
