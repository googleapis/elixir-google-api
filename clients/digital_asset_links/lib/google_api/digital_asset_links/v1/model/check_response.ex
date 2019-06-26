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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse do
  @moduledoc """
  Response message for the CheckAssetLinks call.

  ## Attributes

  *   `debugString` (*type:* `String.t`, *default:* `nil`) - Human-readable message containing information intended to help end users
      understand, reproduce and debug the result.


      The message will be in English and we are currently not planning to offer
      any translations.

      Please note that no guarantees are made about the contents or format of
      this string.  Any aspect of it may be subject to change without notice.
      You should not attempt to programmatically parse this data.  For
      programmatic access, use the error_code field below.
  *   `errorCode` (*type:* `list(String.t)`, *default:* `nil`) - Error codes that describe the result of the Check operation.
  *   `linked` (*type:* `boolean()`, *default:* `nil`) - Set to true if the assets specified in the request are linked by the
      relation specified in the request.
  *   `maxAge` (*type:* `String.t`, *default:* `nil`) - From serving time, how much longer the response should be considered valid
      barring further updates.
      REQUIRED
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugString => String.t(),
          :errorCode => list(String.t()),
          :linked => boolean(),
          :maxAge => String.t()
        }

  field(:debugString)
  field(:errorCode, type: :list)
  field(:linked)
  field(:maxAge)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
