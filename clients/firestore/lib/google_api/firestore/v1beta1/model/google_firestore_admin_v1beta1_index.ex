# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Index do
  @moduledoc """
  An index definition.

  ## Attributes

  - collectionId (String.t): The collection ID to which this index applies. Required. Defaults to `nil`.
  - fields (list(GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexField.t)): The fields to index. Defaults to `nil`.
  - name (String.t): The resource name of the index.
  Output only. Defaults to `nil`.
  - state (String.t): The state of the index.
  Output only. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionId => String.t(),
          :fields =>
            list(GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexField.t()),
          :name => String.t(),
          :state => String.t()
        }

  field(:collectionId)

  field(
    :fields,
    as: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1IndexField,
    type: :list
  )

  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Index do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Index.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Index do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
