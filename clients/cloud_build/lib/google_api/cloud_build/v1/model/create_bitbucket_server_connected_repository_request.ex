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

defmodule GoogleApi.CloudBuild.V1.Model.CreateBitbucketServerConnectedRepositoryRequest do
  @moduledoc """
  Request to connect a repository from a connected Bitbucket Server host.

  ## Attributes

  *   `bitbucketServerConnectedRepository` (*type:* `GoogleApi.CloudBuild.V1.Model.BitbucketServerConnectedRepository.t`, *default:* `nil`) - Required. The Bitbucket Server repository to connect.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The name of the `BitbucketServerConfig` that added connected repository. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bitbucketServerConnectedRepository =>
            GoogleApi.CloudBuild.V1.Model.BitbucketServerConnectedRepository.t() | nil,
          :parent => String.t() | nil
        }

  field(:bitbucketServerConnectedRepository,
    as: GoogleApi.CloudBuild.V1.Model.BitbucketServerConnectedRepository
  )

  field(:parent)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudBuild.V1.Model.CreateBitbucketServerConnectedRepositoryRequest do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.CreateBitbucketServerConnectedRepositoryRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudBuild.V1.Model.CreateBitbucketServerConnectedRepositoryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
