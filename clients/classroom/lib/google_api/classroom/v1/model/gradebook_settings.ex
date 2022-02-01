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

defmodule GoogleApi.Classroom.V1.Model.GradebookSettings do
  @moduledoc """
  The gradebook settings for a course. See the [help center article](https://support.google.com/edu/classroom/answer/9184995) for details.

  ## Attributes

  *   `calculationType` (*type:* `String.t`, *default:* `nil`) - Indicates how the overall grade is calculated.
  *   `displaySetting` (*type:* `String.t`, *default:* `nil`) - Indicates who can see the overall grade..
  *   `gradeCategories` (*type:* `list(GoogleApi.Classroom.V1.Model.GradeCategory.t)`, *default:* `nil`) - Grade categories that are available for coursework in the course.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calculationType => String.t() | nil,
          :displaySetting => String.t() | nil,
          :gradeCategories => list(GoogleApi.Classroom.V1.Model.GradeCategory.t()) | nil
        }

  field(:calculationType)
  field(:displaySetting)
  field(:gradeCategories, as: GoogleApi.Classroom.V1.Model.GradeCategory, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.GradebookSettings do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.GradebookSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.GradebookSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
