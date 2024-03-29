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

defmodule GoogleApi.Transcoder.V1.Model.Animation do
  @moduledoc """
  Animation types.

  ## Attributes

  *   `animationEnd` (*type:* `GoogleApi.Transcoder.V1.Model.AnimationEnd.t`, *default:* `nil`) - End previous animation.
  *   `animationFade` (*type:* `GoogleApi.Transcoder.V1.Model.AnimationFade.t`, *default:* `nil`) - Display overlay object with fade animation.
  *   `animationStatic` (*type:* `GoogleApi.Transcoder.V1.Model.AnimationStatic.t`, *default:* `nil`) - Display static overlay object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :animationEnd => GoogleApi.Transcoder.V1.Model.AnimationEnd.t() | nil,
          :animationFade => GoogleApi.Transcoder.V1.Model.AnimationFade.t() | nil,
          :animationStatic => GoogleApi.Transcoder.V1.Model.AnimationStatic.t() | nil
        }

  field(:animationEnd, as: GoogleApi.Transcoder.V1.Model.AnimationEnd)
  field(:animationFade, as: GoogleApi.Transcoder.V1.Model.AnimationFade)
  field(:animationStatic, as: GoogleApi.Transcoder.V1.Model.AnimationStatic)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.Animation do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.Animation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.Animation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
