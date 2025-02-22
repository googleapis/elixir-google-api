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

defmodule GoogleApi.Spanner.V1.Model.AddSplitPointsRequest do
  @moduledoc """
  The request for AddSplitPoints.

  ## Attributes

  *   `initiator` (*type:* `String.t`, *default:* `nil`) - Optional. A user-supplied tag associated with the split points. For example, "initial_data_load", "special_event_1". Defaults to "CloudAddSplitPointsAPI" if not specified. The length of the tag must not exceed 50 characters,else will be trimmed. Only valid UTF8 characters are allowed.
  *   `splitPoints` (*type:* `list(GoogleApi.Spanner.V1.Model.SplitPoints.t)`, *default:* `nil`) - Required. The split points to add.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :initiator => String.t() | nil,
          :splitPoints => list(GoogleApi.Spanner.V1.Model.SplitPoints.t()) | nil
        }

  field(:initiator)
  field(:splitPoints, as: GoogleApi.Spanner.V1.Model.SplitPoints, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.AddSplitPointsRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.AddSplitPointsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.AddSplitPointsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
