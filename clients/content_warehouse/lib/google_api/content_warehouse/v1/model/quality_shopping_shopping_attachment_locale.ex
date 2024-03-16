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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityShoppingShoppingAttachmentLocale do
  @moduledoc """


  ## Attributes

  *   `languageId` (*type:* `integer()`, *default:* `nil`) - Use integers for fast scoring. Note: 26 is UNKNOWN_LANGUAGE_ID, 0 is UNKNOWN region, see i18n::languages::Language and StableInternalRegionconverter Use -1 as default for both.
  *   `regionId` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :languageId => integer() | nil,
          :regionId => integer() | nil
        }

  field(:languageId)
  field(:regionId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityShoppingShoppingAttachmentLocale do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityShoppingShoppingAttachmentLocale.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityShoppingShoppingAttachmentLocale do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end