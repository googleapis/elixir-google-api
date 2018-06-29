# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1EntityFilter do
  @moduledoc """
  Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage:  Entire project:   kinds&#x3D;[], namespace_ids&#x3D;[]  Kinds Foo and Bar in all namespaces:   kinds&#x3D;[&#39;Foo&#39;, &#39;Bar&#39;], namespace_ids&#x3D;[]  Kinds Foo and Bar only in the default namespace:   kinds&#x3D;[&#39;Foo&#39;, &#39;Bar&#39;], namespace_ids&#x3D;[&#39;&#39;]  Kinds Foo and Bar in both the default and Baz namespaces:   kinds&#x3D;[&#39;Foo&#39;, &#39;Bar&#39;], namespace_ids&#x3D;[&#39;&#39;, &#39;Baz&#39;]  The entire Baz namespace:   kinds&#x3D;[], namespace_ids&#x3D;[&#39;Baz&#39;]

  ## Attributes

  - kinds ([String.t]): If empty, then this represents all kinds. Defaults to: `null`.
  - namespaceIds ([String.t]): An empty list represents all namespaces. This is the preferred usage for projects that don&#39;t use namespaces.  An empty string element represents the default namespace. This should be used if the project has data in non-default namespaces, but doesn&#39;t want to include them. Each namespace in this list must be unique. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kinds => list(any()),
          :namespaceIds => list(any())
        }

  field(:kinds, type: :list)
  field(:namespaceIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1EntityFilter do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1EntityFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1EntityFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
