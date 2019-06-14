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

defmodule GoogleApi.Firestore.V1beta1.Model.Order do
  @moduledoc """
  An order on a field.

  ## Attributes

  - direction (String.t): The direction to order by. Defaults to `ASCENDING`. Defaults to `nil`.
  - field (GoogleApi.Firestore.V1beta1.Model.FieldReference.t): The field to order by. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :direction => String.t(),
          :field => GoogleApi.Firestore.V1beta1.Model.FieldReference.t()
        }

  field(:direction)
  field(:field, as: GoogleApi.Firestore.V1beta1.Model.FieldReference)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Order do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.Order.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Order do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
