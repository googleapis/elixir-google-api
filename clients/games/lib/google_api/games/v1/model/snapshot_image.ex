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

defmodule GoogleApi.Games.V1.Model.SnapshotImage do
  @moduledoc """
  An image of a snapshot.

  ## Attributes

  *   `height` (*type:* `integer()`, *default:* `nil`) - The height of the image.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed
      string `games#snapshotImage`.
  *   `mime_type` (*type:* `String.t`, *default:* `nil`) - The MIME type of the image.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL of the image. This URL may be invalidated at any time and should
      not be cached.
  *   `width` (*type:* `integer()`, *default:* `nil`) - The width of the image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => integer(),
          :kind => String.t(),
          :mime_type => String.t(),
          :url => String.t(),
          :width => integer()
        }

  field(:height)
  field(:kind)
  field(:mime_type)
  field(:url)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.SnapshotImage do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.SnapshotImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.SnapshotImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
