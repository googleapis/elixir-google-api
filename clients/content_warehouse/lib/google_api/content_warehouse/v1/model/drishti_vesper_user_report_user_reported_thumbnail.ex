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

defmodule GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail do
  @moduledoc """
  Proto holding values for user reported thumbnails. Next id: 12

  ## Attributes

  *   `denseFeatures` (*type:* `list(number())`, *default:* `nil`) - 
  *   `duration` (*type:* `integer()`, *default:* `nil`) - Number of days in which volume is calculated.
  *   `humanLabel` (*type:* `GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportHumanLabel.t`, *default:* `nil`) - 
  *   `impressions` (*type:* `integer()`, *default:* `nil`) - Daily aggregared impressions for the reported video.
  *   `needHumanLabel` (*type:* `boolean()`, *default:* `nil`) - Whether the thumbnail needs a human label.
  *   `rawHumanLabels` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportHumanLabel.t)`, *default:* `nil`) - 
  *   `reportScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportModelScore.t`, *default:* `nil`) - 
  *   `reportType` (*type:* `String.t`, *default:* `nil`) - 
  *   `score` (*type:* `GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportModelScore.t`, *default:* `nil`) - 
  *   `useCase` (*type:* `String.t`, *default:* `nil`) - 
  *   `volume` (*type:* `integer()`, *default:* `nil`) - Number of reports.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :denseFeatures => list(number()) | nil,
          :duration => integer() | nil,
          :humanLabel =>
            GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportHumanLabel.t() | nil,
          :impressions => integer() | nil,
          :needHumanLabel => boolean() | nil,
          :rawHumanLabels =>
            list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportHumanLabel.t()) | nil,
          :reportScore =>
            GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportModelScore.t() | nil,
          :reportType => String.t() | nil,
          :score =>
            GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportModelScore.t() | nil,
          :useCase => String.t() | nil,
          :volume => integer() | nil
        }

  field(:denseFeatures, type: :list)
  field(:duration)
  field(:humanLabel, as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportHumanLabel)
  field(:impressions)
  field(:needHumanLabel)

  field(:rawHumanLabels,
    as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportHumanLabel,
    type: :list
  )

  field(:reportScore, as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportModelScore)
  field(:reportType)
  field(:score, as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportModelScore)
  field(:useCase)
  field(:volume)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end