# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DoubleClickSearch.V2.Model.Availability do
  @moduledoc """
  A message containing availability data relevant to DoubleClick Search.

  ## Attributes

  - advertiserId (String.t): DS advertiser ID. Defaults to `nil`.
  - agencyId (String.t): DS agency ID. Defaults to `nil`.
  - availabilityTimestamp (String.t): The time by which all conversions have been uploaded, in epoch millis UTC. Defaults to `nil`.
  - segmentationId (String.t): The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID). Defaults to `nil`.
  - segmentationName (String.t): The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name). Defaults to `nil`.
  - segmentationType (String.t): The segmentation type that this availability is for (its default value is FLOODLIGHT). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t(),
          :agencyId => String.t(),
          :availabilityTimestamp => String.t(),
          :segmentationId => String.t(),
          :segmentationName => String.t(),
          :segmentationType => String.t()
        }

  field(:advertiserId)
  field(:agencyId)
  field(:availabilityTimestamp)
  field(:segmentationId)
  field(:segmentationName)
  field(:segmentationType)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.Availability do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.Availability.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.Availability do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
