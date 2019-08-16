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

defmodule GoogleApi.Speech.V1.Model.LongRunningRecognizeMetadata do
  @moduledoc """
  Describes the progress of a long-running `LongRunningRecognize` call. It is
  included in the `metadata` field of the `Operation` returned by the
  `GetOperation` call of the `google::longrunning::Operations` service.

  ## Attributes

  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Time of the most recent processing update.
  *   `progressPercent` (*type:* `integer()`, *default:* `nil`) - Approximate percentage of audio processed thus far. Guaranteed to be 100
      when the audio is fully processed and the results are available.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the request was received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastUpdateTime => DateTime.t(),
          :progressPercent => integer(),
          :startTime => DateTime.t()
        }

  field(:lastUpdateTime, as: DateTime)
  field(:progressPercent)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.LongRunningRecognizeMetadata do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.LongRunningRecognizeMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.LongRunningRecognizeMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
