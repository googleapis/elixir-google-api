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

defmodule GoogleApi.Translate.V3.Model.BatchDocumentInputConfig do
  @moduledoc """
  Input configuration for BatchTranslateDocument request.

  ## Attributes

  *   `gcsSource` (*type:* `GoogleApi.Translate.V3.Model.GcsSource.t`, *default:* `nil`) - Google Cloud Storage location for the source input. This can be a single file (for example, `gs://translation-test/input.docx`) or a wildcard (for example, `gs://translation-test/*`). File mime type is determined based on extension. Supported mime type includes: - `pdf`, application/pdf - `docx`, application/vnd.openxmlformats-officedocument.wordprocessingml.document - `pptx`, application/vnd.openxmlformats-officedocument.presentationml.presentation - `xlsx`, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet The max file size to support for `.docx`, `.pptx` and `.xlsx` is 100MB. The max file size to support for `.pdf` is 1GB and the max page limit is 1000 pages. The max file size to support for all input documents is 1GB.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsSource => GoogleApi.Translate.V3.Model.GcsSource.t() | nil
        }

  field(:gcsSource, as: GoogleApi.Translate.V3.Model.GcsSource)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.BatchDocumentInputConfig do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.BatchDocumentInputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.BatchDocumentInputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
