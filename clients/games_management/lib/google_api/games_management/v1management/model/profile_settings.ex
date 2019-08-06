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

defmodule GoogleApi.GamesManagement.V1management.Model.ProfileSettings do
  @moduledoc """
  This is a JSON template for profile settings

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `gamesManagement#profileSettings`) - Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#profileSettings.
  *   `profileVisible` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :profileVisible => boolean()
        }

  field(:kind)
  field(:profileVisible)
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.ProfileSettings do
  def decode(value, options) do
    GoogleApi.GamesManagement.V1management.Model.ProfileSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.ProfileSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
