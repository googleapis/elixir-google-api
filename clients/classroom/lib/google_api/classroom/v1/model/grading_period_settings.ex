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

defmodule GoogleApi.Classroom.V1.Model.GradingPeriodSettings do
  @moduledoc """
  Grading period settings that include all the individual grading periods in a course.

  ## Attributes

  *   `applyToExistingCoursework` (*type:* `boolean()`, *default:* `nil`) - Supports toggling the application of grading periods on existing stream items. Once set, this value is persisted meaning that it does not need to be set in every request to update `GradingPeriodSettings`. If not previously set, the default is False.
  *   `gradingPeriods` (*type:* `list(GoogleApi.Classroom.V1.Model.GradingPeriod.t)`, *default:* `nil`) - The list of grading periods in a specific course. Grading periods must not have overlapping date ranges and must be listed in chronological order. Each grading period must have a unique title within a course.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyToExistingCoursework => boolean() | nil,
          :gradingPeriods => list(GoogleApi.Classroom.V1.Model.GradingPeriod.t()) | nil
        }

  field(:applyToExistingCoursework)
  field(:gradingPeriods, as: GoogleApi.Classroom.V1.Model.GradingPeriod, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.GradingPeriodSettings do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.GradingPeriodSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.GradingPeriodSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
