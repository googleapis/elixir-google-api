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

defmodule GoogleApi.Firestore.V1beta1.Model.Filter do
  @moduledoc """
  A filter.

  ## Attributes

  - compositeFilter (CompositeFilter): A composite filter. Defaults to: `null`.
  - fieldFilter (FieldFilter): A filter on a document field. Defaults to: `null`.
  - unaryFilter (UnaryFilter): A filter that takes exactly one argument. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compositeFilter => GoogleApi.Firestore.V1beta1.Model.CompositeFilter.t(),
          :fieldFilter => GoogleApi.Firestore.V1beta1.Model.FieldFilter.t(),
          :unaryFilter => GoogleApi.Firestore.V1beta1.Model.UnaryFilter.t()
        }

  field(:compositeFilter, as: GoogleApi.Firestore.V1beta1.Model.CompositeFilter)
  field(:fieldFilter, as: GoogleApi.Firestore.V1beta1.Model.FieldFilter)
  field(:unaryFilter, as: GoogleApi.Firestore.V1beta1.Model.UnaryFilter)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Filter do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.Filter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Filter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
