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

defmodule GoogleApi.Firestore.V1beta1.Model.DocumentTransform do
  @moduledoc """
  A transformation of a document.

  ## Attributes

  - document (String.t): The name of the document to transform. Defaults to `nil`.
  - fieldTransforms (list(GoogleApi.Firestore.V1beta1.Model.FieldTransform.t)): The list of transformations to apply to the fields of the document, in
  order.
  This must not be empty. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => String.t(),
          :fieldTransforms => list(GoogleApi.Firestore.V1beta1.Model.FieldTransform.t())
        }

  field(:document)
  field(:fieldTransforms, as: GoogleApi.Firestore.V1beta1.Model.FieldTransform, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.DocumentTransform do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.DocumentTransform.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.DocumentTransform do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
