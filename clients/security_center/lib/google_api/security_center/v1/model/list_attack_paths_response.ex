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

defmodule GoogleApi.SecurityCenter.V1.Model.ListAttackPathsResponse do
  @moduledoc """
  Response message for listing the attack paths for a given simulation or valued resource.

  ## Attributes

  *   `attackPaths` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.AttackPath.t)`, *default:* `nil`) - The attack paths that the attack path simulation identified.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attackPaths => list(GoogleApi.SecurityCenter.V1.Model.AttackPath.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:attackPaths, as: GoogleApi.SecurityCenter.V1.Model.AttackPath, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.ListAttackPathsResponse do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.ListAttackPathsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.ListAttackPathsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
