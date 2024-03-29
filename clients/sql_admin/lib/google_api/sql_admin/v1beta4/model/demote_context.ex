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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DemoteContext do
  @moduledoc """
  This context is used to demote an existing standalone instance to be a Cloud SQL read replica for an external database server.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#demoteContext`.
  *   `sourceRepresentativeInstanceName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the instance which acts as an on-premises primary instance in the replication setup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :sourceRepresentativeInstanceName => String.t() | nil
        }

  field(:kind)
  field(:sourceRepresentativeInstanceName)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DemoteContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
