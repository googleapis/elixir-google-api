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

defmodule GoogleApi.StreetViewPublish.V1.Model.NotOutdoorsFailureDetails do
  @moduledoc """
  Details related to ProcessingFailureReason#NOT_OUTDOORS.

  ## Attributes

  *   `time` (*type:* `String.t`, *default:* `nil`) - Relative time (from the start of the video stream) when an indoor frame was found.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :time => String.t() | nil
        }

  field(:time)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.NotOutdoorsFailureDetails do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.NotOutdoorsFailureDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.NotOutdoorsFailureDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
