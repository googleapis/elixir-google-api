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

defmodule GoogleApi.Forms.V1.Model.FileUploadQuestion do
  @moduledoc """
  A file upload question. The API currently does not support creating file upload questions.

  ## Attributes

  *   `folderId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the Drive folder where uploaded files are stored.
  *   `maxFileSize` (*type:* `String.t`, *default:* `nil`) - Maximum number of bytes allowed for any single file uploaded to this question.
  *   `maxFiles` (*type:* `integer()`, *default:* `nil`) - Maximum number of files that can be uploaded for this question in a single response.
  *   `types` (*type:* `list(String.t)`, *default:* `nil`) - File types accepted by this question.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :folderId => String.t() | nil,
          :maxFileSize => String.t() | nil,
          :maxFiles => integer() | nil,
          :types => list(String.t()) | nil
        }

  field(:folderId)
  field(:maxFileSize)
  field(:maxFiles)
  field(:types, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.FileUploadQuestion do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.FileUploadQuestion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.FileUploadQuestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
