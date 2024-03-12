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

defmodule GoogleApi.Compute.V1.Model.DiskAsyncReplicationList do
  @moduledoc """


  ## Attributes

  *   `asyncReplicationDisk` (*type:* `GoogleApi.Compute.V1.Model.DiskAsyncReplication.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asyncReplicationDisk => GoogleApi.Compute.V1.Model.DiskAsyncReplication.t() | nil
        }

  field(:asyncReplicationDisk, as: GoogleApi.Compute.V1.Model.DiskAsyncReplication)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.DiskAsyncReplicationList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.DiskAsyncReplicationList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.DiskAsyncReplicationList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
