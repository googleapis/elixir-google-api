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

defmodule GoogleApi.BigQueryReservation.V1.Model.MoveAssignmentRequest do
  @moduledoc """
  The request for ReservationService.MoveAssignment. **Note**: "bigquery.reservationAssignments.create" permission is required on the destination_id. **Note**: "bigquery.reservationAssignments.create" and "bigquery.reservationAssignments.delete" permission are required on the related assignee.

  ## Attributes

  *   `assignmentId` (*type:* `String.t`, *default:* `nil`) - The optional assignment ID. A new assignment name is generated if this field is empty. This field can contain only lowercase alphanumeric characters or dashes. Max length is 64 characters.
  *   `destinationId` (*type:* `String.t`, *default:* `nil`) - The new reservation ID, e.g.: `projects/myotherproject/locations/US/reservations/team2-prod`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assignmentId => String.t() | nil,
          :destinationId => String.t() | nil
        }

  field(:assignmentId)
  field(:destinationId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryReservation.V1.Model.MoveAssignmentRequest do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.MoveAssignmentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryReservation.V1.Model.MoveAssignmentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
