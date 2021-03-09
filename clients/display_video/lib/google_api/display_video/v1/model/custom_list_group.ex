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

defmodule GoogleApi.DisplayVideo.V1.Model.CustomListGroup do
  @moduledoc """
  Details of custom list group. All custom list targeting settings are logically ‘OR’ of each other.

  ## Attributes

  *   `settings` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.CustomListTargetingSetting.t)`, *default:* `nil`) - Required. All custom list targeting settings in custom list group. Repeated settings with same id will be ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :settings => list(GoogleApi.DisplayVideo.V1.Model.CustomListTargetingSetting.t()) | nil
        }

  field(:settings, as: GoogleApi.DisplayVideo.V1.Model.CustomListTargetingSetting, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.CustomListGroup do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.CustomListGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.CustomListGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
