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

defmodule GoogleApi.FirebaseStorage.V1beta.Model.GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata do
  @moduledoc """
  Metadata for MigrateLocationDestructively LRO.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the LRO was created.
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the LRO was last updated.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current state of the migration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :state => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:lastUpdateTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FirebaseStorage.V1beta.Model.GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata do
  def decode(value, options) do
    GoogleApi.FirebaseStorage.V1beta.Model.GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FirebaseStorage.V1beta.Model.GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
