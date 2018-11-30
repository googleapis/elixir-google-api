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

defmodule GoogleApi.Mirror.V1.Model.Attachment do
  @moduledoc """
  Represents media content, such as a photo, that can be attached to a timeline item.

  ## Attributes

  - contentType (String.t): The MIME type of the attachment. Defaults to: `null`.
  - contentUrl (String.t): The URL for the content. Defaults to: `null`.
  - id (String.t): The ID of the attachment. Defaults to: `null`.
  - isProcessingContent (boolean()): Indicates that the contentUrl is not available because the attachment content is still being processed. If the caller wishes to retrieve the content, it should try again later. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentType => any(),
          :contentUrl => any(),
          :id => any(),
          :isProcessingContent => any()
        }

  field(:contentType)
  field(:contentUrl)
  field(:id)
  field(:isProcessingContent)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Attachment do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Attachment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Attachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
