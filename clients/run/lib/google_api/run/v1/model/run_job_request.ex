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

defmodule GoogleApi.Run.V1.Model.RunJobRequest do
  @moduledoc """
  Request message for creating a new execution of a job.

  ## Attributes

  *   `overrides` (*type:* `GoogleApi.Run.V1.Model.Overrides.t`, *default:* `nil`) - Optional. Overrides existing job configuration for one specific new job execution only, using the specified values to update the job configuration for the new execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :overrides => GoogleApi.Run.V1.Model.Overrides.t() | nil
        }

  field(:overrides, as: GoogleApi.Run.V1.Model.Overrides)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.RunJobRequest do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.RunJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.RunJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
