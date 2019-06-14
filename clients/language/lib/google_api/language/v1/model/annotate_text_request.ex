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

defmodule GoogleApi.Language.V1.Model.AnnotateTextRequest do
  @moduledoc """
  The request message for the text annotation API, which can perform multiple
  analysis types (sentiment, entities, and syntax) in one call.

  ## Attributes

  - document (GoogleApi.Language.V1.Model.Document.t): Input document. Defaults to `nil`.
  - encodingType (String.t): The encoding type used by the API to calculate offsets. Defaults to `nil`.
  - features (GoogleApi.Language.V1.Model.Features.t): The enabled features. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => GoogleApi.Language.V1.Model.Document.t(),
          :encodingType => String.t(),
          :features => GoogleApi.Language.V1.Model.Features.t()
        }

  field(:document, as: GoogleApi.Language.V1.Model.Document)
  field(:encodingType)
  field(:features, as: GoogleApi.Language.V1.Model.Features)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.AnnotateTextRequest do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.AnnotateTextRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.AnnotateTextRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
