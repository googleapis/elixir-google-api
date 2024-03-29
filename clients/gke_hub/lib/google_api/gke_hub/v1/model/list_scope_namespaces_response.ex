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

defmodule GoogleApi.GKEHub.V1.Model.ListScopeNamespacesResponse do
  @moduledoc """
  List of fleet namespaces.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to request the next page of resources from the `ListNamespaces` method. The value of an empty string means that there are no more resources to return.
  *   `scopeNamespaces` (*type:* `list(GoogleApi.GKEHub.V1.Model.Namespace.t)`, *default:* `nil`) - The list of fleet namespaces
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :scopeNamespaces => list(GoogleApi.GKEHub.V1.Model.Namespace.t()) | nil
        }

  field(:nextPageToken)
  field(:scopeNamespaces, as: GoogleApi.GKEHub.V1.Model.Namespace, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ListScopeNamespacesResponse do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ListScopeNamespacesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ListScopeNamespacesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
