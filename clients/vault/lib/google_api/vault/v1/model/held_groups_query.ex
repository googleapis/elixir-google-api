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

defmodule GoogleApi.Vault.V1.Model.HeldGroupsQuery do
  @moduledoc """
  Query options for group holds.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.
  *   `terms` (*type:* `String.t`, *default:* `nil`) - The [search operators](https://support.google.com/vault/answer/2474474) used to refine the messages covered by the hold.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil,
          :terms => String.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:terms)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.HeldGroupsQuery do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.HeldGroupsQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.HeldGroupsQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
