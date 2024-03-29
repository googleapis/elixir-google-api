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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDolphinFeatures do
  @moduledoc """


  ## Attributes

  *   `altQuery` (*type:* `String.t`, *default:* `nil`) - The alt query used for building the Dolphin example.
  *   `answer` (*type:* `String.t`, *default:* `nil`) - The answer used for building the Dolphin example.
  *   `query` (*type:* `String.t`, *default:* `nil`) - The query used for building the Dolphin example.
  *   `timeMs` (*type:* `String.t`, *default:* `nil`) - The time stamp of the video anchor in milliseconds.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title used for building the Dolphin example.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The url of the video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altQuery => String.t() | nil,
          :answer => String.t() | nil,
          :query => String.t() | nil,
          :timeMs => String.t() | nil,
          :title => String.t() | nil,
          :url => String.t() | nil
        }

  field(:altQuery)
  field(:answer)
  field(:query)
  field(:timeMs)
  field(:title)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDolphinFeatures do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDolphinFeatures.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDolphinFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
