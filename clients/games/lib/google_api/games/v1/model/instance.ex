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

defmodule GoogleApi.Games.V1.Model.Instance do
  @moduledoc """
  The Instance resource.

  ## Attributes

  *   `acquisitionUri` (*type:* `String.t`, *default:* `nil`) - URI which shows where a user can acquire this instance.
  *   `androidInstance` (*type:* `GoogleApi.Games.V1.Model.InstanceAndroidDetails.t`, *default:* `nil`) - Platform dependent details for Android.
  *   `iosInstance` (*type:* `GoogleApi.Games.V1.Model.InstanceIosDetails.t`, *default:* `nil`) - Platform dependent details for iOS.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed
      string `games#instance`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Localized display name.
  *   `platformType` (*type:* `String.t`, *default:* `nil`) - The platform type.
  *   `realtimePlay` (*type:* `boolean()`, *default:* `nil`) - Flag to show if this game instance supports realtime play.
  *   `turnBasedPlay` (*type:* `boolean()`, *default:* `nil`) - Flag to show if this game instance supports turn based play.
  *   `webInstance` (*type:* `GoogleApi.Games.V1.Model.InstanceWebDetails.t`, *default:* `nil`) - Platform dependent details for Web.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acquisitionUri => String.t(),
          :androidInstance => GoogleApi.Games.V1.Model.InstanceAndroidDetails.t(),
          :iosInstance => GoogleApi.Games.V1.Model.InstanceIosDetails.t(),
          :kind => String.t(),
          :name => String.t(),
          :platformType => String.t(),
          :realtimePlay => boolean(),
          :turnBasedPlay => boolean(),
          :webInstance => GoogleApi.Games.V1.Model.InstanceWebDetails.t()
        }

  field(:acquisitionUri)
  field(:androidInstance, as: GoogleApi.Games.V1.Model.InstanceAndroidDetails)
  field(:iosInstance, as: GoogleApi.Games.V1.Model.InstanceIosDetails)
  field(:kind)
  field(:name)
  field(:platformType)
  field(:realtimePlay)
  field(:turnBasedPlay)
  field(:webInstance, as: GoogleApi.Games.V1.Model.InstanceWebDetails)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
