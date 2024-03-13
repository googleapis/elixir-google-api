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

defmodule GoogleApi.WalletObjects.V1.Model.LocalizedString do
  @moduledoc """


  ## Attributes

  *   `defaultValue` (*type:* `GoogleApi.WalletObjects.V1.Model.TranslatedString.t`, *default:* `nil`) - Contains the string to be displayed if no appropriate translation is available.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#localizedString"`.
  *   `translatedValues` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TranslatedString.t)`, *default:* `nil`) - Contains the translations for the string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultValue => GoogleApi.WalletObjects.V1.Model.TranslatedString.t() | nil,
          :kind => String.t() | nil,
          :translatedValues => list(GoogleApi.WalletObjects.V1.Model.TranslatedString.t()) | nil
        }

  field(:defaultValue, as: GoogleApi.WalletObjects.V1.Model.TranslatedString)
  field(:kind)
  field(:translatedValues, as: GoogleApi.WalletObjects.V1.Model.TranslatedString, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.LocalizedString do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.LocalizedString.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.LocalizedString do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end