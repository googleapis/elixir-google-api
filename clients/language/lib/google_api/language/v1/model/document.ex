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

defmodule GoogleApi.Language.V1.Model.Document do
  @moduledoc """
  ################################################################ #

  Represents the input to API methods.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - The content of the input in string format.
      Cloud audit logging exempt since it is based on user data.
  *   `gcsContentUri` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage URI where the file content is located.
      This URI must be of the form: gs://bucket_name/object_name. For more
      details, see https://cloud.google.com/storage/docs/reference-uris.
      NOTE: Cloud Storage object versioning is not supported.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language of the document (if not specified, the language is
      automatically detected). Both ISO and BCP-47 language codes are
      accepted.<br>
      [Language Support](/natural-language/docs/languages)
      lists currently supported languages for each API method.
      If the language (either specified by the caller or automatically detected)
      is not supported by the called API method, an `INVALID_ARGUMENT` error
      is returned.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. If the type is not set or is `TYPE_UNSPECIFIED`,
      returns an `INVALID_ARGUMENT` error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :gcsContentUri => String.t(),
          :language => String.t(),
          :type => String.t()
        }

  field(:content)
  field(:gcsContentUri)
  field(:language)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.Document do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.Document.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.Document do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
