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

defmodule GoogleApi.Language.V2.Model.AnnotateTextRequest do
  @moduledoc """
  The request message for the text annotation API, which can perform multiple analysis types in one call.

  ## Attributes

  *   `document` (*type:* `GoogleApi.Language.V2.Model.Document.t`, *default:* `nil`) - Required. Input document.
  *   `encodingType` (*type:* `String.t`, *default:* `nil`) - The encoding type used by the API to calculate offsets.
  *   `features` (*type:* `GoogleApi.Language.V2.Model.AnnotateTextRequestFeatures.t`, *default:* `nil`) - Required. The enabled features.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => GoogleApi.Language.V2.Model.Document.t() | nil,
          :encodingType => String.t() | nil,
          :features => GoogleApi.Language.V2.Model.AnnotateTextRequestFeatures.t() | nil
        }

  field(:document, as: GoogleApi.Language.V2.Model.Document)
  field(:encodingType)
  field(:features, as: GoogleApi.Language.V2.Model.AnnotateTextRequestFeatures)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.AnnotateTextRequest do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.AnnotateTextRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.AnnotateTextRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
