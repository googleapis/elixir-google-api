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

defmodule GoogleApi.SecurityCenter.V1.Model.DataAccessEvent do
  @moduledoc """
  Details about a data access attempt made by a principal not authorized under applicable data security policy.

  ## Attributes

  *   `eventId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for data access event.
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of data access event.
  *   `operation` (*type:* `String.t`, *default:* `nil`) - The operation performed by the principal to access the data.
  *   `principalEmail` (*type:* `String.t`, *default:* `nil`) - The email address of the principal that accessed the data. The principal could be a user account, service account, Google group, or other.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventId => String.t() | nil,
          :eventTime => DateTime.t() | nil,
          :operation => String.t() | nil,
          :principalEmail => String.t() | nil
        }

  field(:eventId)
  field(:eventTime, as: DateTime)
  field(:operation)
  field(:principalEmail)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.DataAccessEvent do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.DataAccessEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.DataAccessEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
