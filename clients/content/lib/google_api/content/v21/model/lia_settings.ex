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

defmodule GoogleApi.Content.V21.Model.LiaSettings do
  @moduledoc """
  Local Inventory ads (LIA) settings. All methods except listposdataproviders require the admin role.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The ID of the account to which these LIA settings belong. Ignored upon update, always present in get request responses.
  *   `countrySettings` (*type:* `list(GoogleApi.Content.V21.Model.LiaCountrySettings.t)`, *default:* `nil`) - The LIA settings for each country.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#liaSettings`"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :countrySettings => list(GoogleApi.Content.V21.Model.LiaCountrySettings.t()),
          :kind => String.t()
        }

  field(:accountId)
  field(:countrySettings, as: GoogleApi.Content.V21.Model.LiaCountrySettings, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.LiaSettings do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.LiaSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.LiaSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
