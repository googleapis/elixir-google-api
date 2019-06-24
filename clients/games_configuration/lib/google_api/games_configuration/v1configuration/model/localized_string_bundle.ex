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

defmodule GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle do
  @moduledoc """
  This is a JSON template for a localized string bundle resource.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `gamesConfiguration#localizedStringBundle`) - Uniquely identifies the type of this resource. Value is always the fixed string gamesConfiguration#localizedStringBundle.
  *   `translations` (*type:* `list(GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString.t)`, *default:* `nil`) - The locale strings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :translations =>
            list(GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString.t())
        }

  field(:kind)

  field(
    :translations,
    as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedString,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle do
  def decode(value, options) do
    GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
