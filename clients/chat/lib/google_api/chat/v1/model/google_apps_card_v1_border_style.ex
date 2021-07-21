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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1BorderStyle do
  @moduledoc """
  Represents the complete border style applied to widgets.

  ## Attributes

  *   `cornerRadius` (*type:* `integer()`, *default:* `nil`) - The corner radius for the border.
  *   `strokeColor` (*type:* `GoogleApi.Chat.V1.Model.Color.t`, *default:* `nil`) - The colors to use when the type is `BORDER_TYPE_STROKE`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The border type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cornerRadius => integer() | nil,
          :strokeColor => GoogleApi.Chat.V1.Model.Color.t() | nil,
          :type => String.t() | nil
        }

  field(:cornerRadius)
  field(:strokeColor, as: GoogleApi.Chat.V1.Model.Color)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1BorderStyle do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1BorderStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1BorderStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
