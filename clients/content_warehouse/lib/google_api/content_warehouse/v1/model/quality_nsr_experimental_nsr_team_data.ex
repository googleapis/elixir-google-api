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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData do
  @moduledoc """
  Experimental NsrTeam data. This is a proto containing versioned signals which can be used to run live experiments. This proto will not be propagated to MDU shards, but it will be populated at query time by go/web-signal-joins inside the CompressedQualitySignals subproto of PerDocData proto. See go/0DayLEs for the design doc. Note how this is only meant to be used during LEs, it should *not* be used for launches.

  ## Attributes

  *   `versionedSignals` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamScoringSignal.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :versionedSignals =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamScoringSignal.t()
            )
            | nil
        }

  field(:versionedSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamScoringSignal,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
