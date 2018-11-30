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

defmodule GoogleApi.DFAReporting.V28.Model.ConversionsBatchUpdateRequest do
  @moduledoc """
  Update Conversions Request.

  ## Attributes

  - conversions ([Conversion]): The set of conversions to update. Defaults to: `null`.
  - encryptionInfo (EncryptionInfo): Describes how encryptedUserId is encrypted. This is a required field if encryptedUserId is used. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#conversionsBatchUpdateRequest\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversions => list(GoogleApi.DFAReporting.V28.Model.Conversion.t()),
          :encryptionInfo => GoogleApi.DFAReporting.V28.Model.EncryptionInfo.t(),
          :kind => any()
        }

  field(:conversions, as: GoogleApi.DFAReporting.V28.Model.Conversion, type: :list)
  field(:encryptionInfo, as: GoogleApi.DFAReporting.V28.Model.EncryptionInfo)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ConversionsBatchUpdateRequest do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ConversionsBatchUpdateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ConversionsBatchUpdateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
