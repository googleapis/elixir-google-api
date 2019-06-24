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

defmodule GoogleApi.Calendar.V3.Model.CreateConferenceRequest do
  @moduledoc """


  ## Attributes

  *   `conferenceSolutionKey` (*type:* `GoogleApi.Calendar.V3.Model.ConferenceSolutionKey.t`, *default:* `nil`) - The conference solution, such as Hangouts or Hangouts Meet.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - The client-generated unique ID for this request.
      Clients should regenerate this ID for every new request. If an ID provided is the same as for the previous request, the request is ignored.
  *   `status` (*type:* `GoogleApi.Calendar.V3.Model.ConferenceRequestStatus.t`, *default:* `nil`) - The status of the conference create request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conferenceSolutionKey => GoogleApi.Calendar.V3.Model.ConferenceSolutionKey.t(),
          :requestId => String.t(),
          :status => GoogleApi.Calendar.V3.Model.ConferenceRequestStatus.t()
        }

  field(:conferenceSolutionKey, as: GoogleApi.Calendar.V3.Model.ConferenceSolutionKey)
  field(:requestId)
  field(:status, as: GoogleApi.Calendar.V3.Model.ConferenceRequestStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.CreateConferenceRequest do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.CreateConferenceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.CreateConferenceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
