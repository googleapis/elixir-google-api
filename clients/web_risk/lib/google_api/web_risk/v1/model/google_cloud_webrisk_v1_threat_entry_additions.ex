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

defmodule GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryAdditions do
  @moduledoc """
  Contains the set of entries to add to a local database. May contain a combination of compressed and raw data in a single response.

  ## Attributes

  *   `rawHashes` (*type:* `list(GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RawHashes.t)`, *default:* `nil`) - The raw SHA256-formatted entries. Repeated to allow returning sets of hashes with different prefix sizes.
  *   `riceHashes` (*type:* `GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RiceDeltaEncoding.t`, *default:* `nil`) - The encoded 4-byte prefixes of SHA256-formatted entries, using a Golomb-Rice encoding. The hashes are converted to uint32, sorted in ascending order, then delta encoded and stored as encoded_data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rawHashes => list(GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RawHashes.t()) | nil,
          :riceHashes =>
            GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RiceDeltaEncoding.t() | nil
        }

  field(:rawHashes, as: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RawHashes, type: :list)
  field(:riceHashes, as: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RiceDeltaEncoding)
end

defimpl Poison.Decoder, for: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryAdditions do
  def decode(value, options) do
    GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryAdditions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryAdditions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
