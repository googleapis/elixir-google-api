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

defmodule GoogleApi.IAM.V1.Model.QueryTestablePermissionsResponse do
  @moduledoc """
  The response containing permissions which can be tested on a resource.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - To retrieve the next page of results, set
      `QueryTestableRolesRequest.page_token` to this value.
  *   `permissions` (*type:* `list(GoogleApi.IAM.V1.Model.Permission.t)`, *default:* `nil`) - The Permissions testable on the requested resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :permissions => list(GoogleApi.IAM.V1.Model.Permission.t())
        }

  field(:nextPageToken)
  field(:permissions, as: GoogleApi.IAM.V1.Model.Permission, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.QueryTestablePermissionsResponse do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.QueryTestablePermissionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.QueryTestablePermissionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
