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

defmodule GoogleApi.Dataflow.V1b3.Model.ListJobMessagesResponse do
  @moduledoc """
  Response to a request to list job messages.

  ## Attributes

  - autoscalingEvents (list(GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent.t)): Autoscaling events in ascending timestamp order. Defaults to `nil`.
  - jobMessages (list(GoogleApi.Dataflow.V1b3.Model.JobMessage.t)): Messages in ascending timestamp order. Defaults to `nil`.
  - nextPageToken (String.t): The token to obtain the next page of results if there are more. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingEvents => list(GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent.t()),
          :jobMessages => list(GoogleApi.Dataflow.V1b3.Model.JobMessage.t()),
          :nextPageToken => String.t()
        }

  field(:autoscalingEvents, as: GoogleApi.Dataflow.V1b3.Model.AutoscalingEvent, type: :list)
  field(:jobMessages, as: GoogleApi.Dataflow.V1b3.Model.JobMessage, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ListJobMessagesResponse do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ListJobMessagesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ListJobMessagesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
