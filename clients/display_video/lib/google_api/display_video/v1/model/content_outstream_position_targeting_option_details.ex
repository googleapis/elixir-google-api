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

defmodule GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails do
  @moduledoc """
  Represents a targetable content outstream position, which could be used by display and video ads. This will be populated in the content_outstream_position_details field when targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.

  ## Attributes

  *   `contentOutstreamPosition` (*type:* `String.t`, *default:* `nil`) - Output only. The content outstream position.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentOutstreamPosition => String.t() | nil
        }

  field(:contentOutstreamPosition)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
