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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter do
  @moduledoc """
  Identifies a subset of entities in a project. This is specified as
  combinations of kinds and namespaces (either or both of which may be all, as
  described in the following examples).
  Example usage:

  Entire project:
    kinds=[], namespace_ids=[]

  Kinds Foo and Bar in all namespaces:
    kinds=['Foo', 'Bar'], namespace_ids=[]

  Kinds Foo and Bar only in the default namespace:
    kinds=['Foo', 'Bar'], namespace_ids=['']

  Kinds Foo and Bar in both the default and Baz namespaces:
    kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz']

  The entire Baz namespace:
    kinds=[], namespace_ids=['Baz']

  ## Attributes

  *   `kinds` (*type:* `list(String.t)`, *default:* `nil`) - If empty, then this represents all kinds.
  *   `namespaceIds` (*type:* `list(String.t)`, *default:* `nil`) - An empty list represents all namespaces. This is the preferred
      usage for projects that don't use namespaces.

      An empty string element represents the default namespace. This should be
      used if the project has data in non-default namespaces, but doesn't want to
      include them.
      Each namespace in this list must be unique.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kinds => list(String.t()),
          :namespaceIds => list(String.t())
        }

  field(:kinds, type: :list)
  field(:namespaceIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1EntityFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
