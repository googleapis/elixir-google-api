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

defmodule GoogleApi.CivicInfo.V2.Model.RepresentativeInfoData do
  @moduledoc """


  ## Attributes

  *   `divisions` (*type:* `%{optional(String.t) => GoogleApi.CivicInfo.V2.Model.GeographicDivision.t}`, *default:* `nil`) - A map of political geographic divisions that contain the requested address, keyed by the unique Open Civic Data identifier for this division.
  *   `offices` (*type:* `list(GoogleApi.CivicInfo.V2.Model.Office.t)`, *default:* `nil`) - Elected offices referenced by the divisions listed above. Will only be present if includeOffices was true in the request.
  *   `officials` (*type:* `list(GoogleApi.CivicInfo.V2.Model.Official.t)`, *default:* `nil`) - Officials holding the offices listed above. Will only be present if includeOffices was true in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :divisions => %{
            optional(String.t()) => GoogleApi.CivicInfo.V2.Model.GeographicDivision.t()
          },
          :offices => list(GoogleApi.CivicInfo.V2.Model.Office.t()),
          :officials => list(GoogleApi.CivicInfo.V2.Model.Official.t())
        }

  field(:divisions, as: GoogleApi.CivicInfo.V2.Model.GeographicDivision, type: :map)
  field(:offices, as: GoogleApi.CivicInfo.V2.Model.Office, type: :list)
  field(:officials, as: GoogleApi.CivicInfo.V2.Model.Official, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.RepresentativeInfoData do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.RepresentativeInfoData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.RepresentativeInfoData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
