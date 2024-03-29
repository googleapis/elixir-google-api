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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfo do
  @moduledoc """
  The web information of the provider. Next ID: 5

  ## Attributes

  *   `homeStorage` (*type:* `String.t`, *default:* `nil`) - Serialized storage (context) persisted and retrieved for the app and home.
  *   `localizedAppName` (*type:* `String.t`, *default:* `nil`) - The localized app name.
  *   `openAppUrl` (*type:* `String.t`, *default:* `nil`) - A URL to open the provider's app.
  *   `thirdPartyCustomNluInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfoThirdPartyCustomNluInfo.t`, *default:* `nil`) - Info about 3P Custom NLU used in this web provider. TODO(b/321644453) remove when QRewrite is able to call SERoot.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :homeStorage => String.t() | nil,
          :localizedAppName => String.t() | nil,
          :openAppUrl => String.t() | nil,
          :thirdPartyCustomNluInfo =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfoThirdPartyCustomNluInfo.t()
            | nil
        }

  field(:homeStorage)
  field(:localizedAppName)
  field(:openAppUrl)

  field(:thirdPartyCustomNluInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfoThirdPartyCustomNluInfo
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesWebProviderInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
