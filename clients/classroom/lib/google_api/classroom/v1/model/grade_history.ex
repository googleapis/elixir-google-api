# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Classroom.V1.Model.GradeHistory do
  @moduledoc """
  The history of each grade on this submission.

  ## Attributes

  - actorUserId (String.t): The teacher who made the grade change. Defaults to: `null`.
  - gradeChangeType (String.t): The type of grade change at this time in the submission grade history. Defaults to: `null`.
    - Enum - one of [UNKNOWN_GRADE_CHANGE_TYPE, DRAFT_GRADE_POINTS_EARNED_CHANGE, ASSIGNED_GRADE_POINTS_EARNED_CHANGE, MAX_POINTS_CHANGE]
  - gradeTimestamp (DateTime.t): When the grade of the submission was changed. Defaults to: `null`.
  - maxPoints (float()): The denominator of the grade at this time in the submission grade history. Defaults to: `null`.
  - pointsEarned (float()): The numerator of the grade at this time in the submission grade history. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actorUserId => any(),
          :gradeChangeType => any(),
          :gradeTimestamp => DateTime.t(),
          :maxPoints => any(),
          :pointsEarned => any()
        }

  field(:actorUserId)
  field(:gradeChangeType)
  field(:gradeTimestamp, as: DateTime)
  field(:maxPoints)
  field(:pointsEarned)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.GradeHistory do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.GradeHistory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.GradeHistory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
