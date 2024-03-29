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

defmodule GoogleApi.Drive.V3.Model.AppList do
  @moduledoc """
  A list of third-party applications which the user has installed or given access to Google Drive.

  ## Attributes

  *   `defaultAppIds` (*type:* `list(String.t)`, *default:* `nil`) - The list of app IDs that the user has specified to use by default. The list is in reverse-priority order (lowest to highest).
  *   `items` (*type:* `list(GoogleApi.Drive.V3.Model.App.t)`, *default:* `nil`) - The list of apps.
  *   `kind` (*type:* `String.t`, *default:* `drive#appList`) - Output only. Identifies what kind of resource this is. Value: the fixed string "drive#appList".
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - A link back to this list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultAppIds => list(String.t()) | nil,
          :items => list(GoogleApi.Drive.V3.Model.App.t()) | nil,
          :kind => String.t() | nil,
          :selfLink => String.t() | nil
        }

  field(:defaultAppIds, type: :list)
  field(:items, as: GoogleApi.Drive.V3.Model.App, type: :list)
  field(:kind)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.AppList do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.AppList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.AppList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
