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

defmodule GoogleApi.Docs.V1.Model.BatchUpdateDocumentResponse do
  @moduledoc """
  Response message from a BatchUpdateDocument request.

  ## Attributes

  *   `documentId` (*type:* `String.t`, *default:* `nil`) - The ID of the document to which the updates were applied to.
  *   `replies` (*type:* `list(GoogleApi.Docs.V1.Model.Response.t)`, *default:* `nil`) - The reply of the updates. This maps 1:1 with the updates, although replies
      to some requests may be empty.
  *   `writeControl` (*type:* `GoogleApi.Docs.V1.Model.WriteControl.t`, *default:* `nil`) - The updated write control after applying the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentId => String.t(),
          :replies => list(GoogleApi.Docs.V1.Model.Response.t()),
          :writeControl => GoogleApi.Docs.V1.Model.WriteControl.t()
        }

  field(:documentId)
  field(:replies, as: GoogleApi.Docs.V1.Model.Response, type: :list)
  field(:writeControl, as: GoogleApi.Docs.V1.Model.WriteControl)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.BatchUpdateDocumentResponse do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.BatchUpdateDocumentResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.BatchUpdateDocumentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
