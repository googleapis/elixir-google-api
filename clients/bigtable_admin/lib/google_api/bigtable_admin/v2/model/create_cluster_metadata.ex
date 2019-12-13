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

defmodule GoogleApi.BigtableAdmin.V2.Model.CreateClusterMetadata do
  @moduledoc """
  The metadata for the Operation returned by CreateCluster.

  ## Attributes

  *   `finishTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the operation failed or was completed successfully.
  *   `originalRequest` (*type:* `GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest.t`, *default:* `nil`) - The request that prompted the initiation of this CreateCluster operation.
  *   `requestTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the original request was received.
  *   `tables` (*type:* `%{optional(String.t) => GoogleApi.BigtableAdmin.V2.Model.TableProgress.t}`, *default:* `nil`) - Keys: the full `name` of each table that existed in the instance when
      CreateCluster was first called, i.e.
      `projects/<project>/instances/<instance>/tables/<table>`. Any table added
      to the instance by a later API call will be created in the new cluster by
      that API call, not this one.

      Values: information on how much of a table's data has been copied to the
      newly-created cluster so far.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :finishTime => DateTime.t(),
          :originalRequest => GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest.t(),
          :requestTime => DateTime.t(),
          :tables => %{optional(String.t()) => GoogleApi.BigtableAdmin.V2.Model.TableProgress.t()}
        }

  field(:finishTime, as: DateTime)
  field(:originalRequest, as: GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest)
  field(:requestTime, as: DateTime)
  field(:tables, as: GoogleApi.BigtableAdmin.V2.Model.TableProgress, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateClusterMetadata do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.CreateClusterMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateClusterMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
