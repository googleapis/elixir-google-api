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

defmodule GoogleApi.CloudBuild.V2.Model.BatchCreateRepositoriesRequest do
  @moduledoc """
  Message for creating repositoritories in batch.

  ## Attributes

  *   `requests` (*type:* `list(GoogleApi.CloudBuild.V2.Model.CreateRepositoryRequest.t)`, *default:* `nil`) - Required. The request messages specifying the repositories to create.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requests => list(GoogleApi.CloudBuild.V2.Model.CreateRepositoryRequest.t()) | nil
        }

  field(:requests, as: GoogleApi.CloudBuild.V2.Model.CreateRepositoryRequest, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.BatchCreateRepositoriesRequest do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.BatchCreateRepositoriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.BatchCreateRepositoriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
