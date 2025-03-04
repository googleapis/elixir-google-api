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

defmodule GoogleApi.Redis.V1.Model.GcsBackupSource do
  @moduledoc """
  Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.

  ## Attributes

  *   `uris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. URIs of the Cloud Storage objects to import. Example: gs://bucket1/object1, gs://bucket2/folder2/object2
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uris => list(String.t()) | nil
        }

  field(:uris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.GcsBackupSource do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.GcsBackupSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.GcsBackupSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
