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

defmodule GoogleApi.CloudDeploy.V1.Model.DefaultPool do
  @moduledoc """
  Execution using the default Cloud Build pool.

  ## Attributes

  *   `artifactStorage` (*type:* `String.t`, *default:* `nil`) - Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactStorage => String.t() | nil,
          :serviceAccount => String.t() | nil
        }

  field(:artifactStorage)
  field(:serviceAccount)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.DefaultPool do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.DefaultPool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.DefaultPool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
