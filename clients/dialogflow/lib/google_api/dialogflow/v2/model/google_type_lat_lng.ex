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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng do
  @moduledoc """
  An object representing a latitude/longitude pair. This is expressed as a pair
  of doubles representing degrees latitude and degrees longitude. Unless
  specified otherwise, this must conform to the
  <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
  standard</a>. Values must be within normalized ranges.

  ## Attributes

  - latitude (float()): The latitude in degrees. It must be in the range [-90.0, +90.0]. Defaults to `nil`.
  - longitude (float()): The longitude in degrees. It must be in the range [-180.0, +180.0]. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latitude => float(),
          :longitude => float()
        }

  field(:latitude)
  field(:longitude)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleTypeLatLng do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
