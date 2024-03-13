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

defmodule GoogleApi.SQLAdmin.V1.Model.InstancesDemoteRequest do
  @moduledoc """
  This request is used to demote an existing standalone instance to be a Cloud SQL read replica for an external database server.

  ## Attributes

  *   `demoteContext` (*type:* `GoogleApi.SQLAdmin.V1.Model.DemoteContext.t`, *default:* `nil`) - Required. Contains details about the demote operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :demoteContext => GoogleApi.SQLAdmin.V1.Model.DemoteContext.t() | nil
        }

  field(:demoteContext, as: GoogleApi.SQLAdmin.V1.Model.DemoteContext)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.InstancesDemoteRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.InstancesDemoteRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.InstancesDemoteRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end