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

defmodule GoogleApi.Vault.V1.Model.SavedQuery do
  @moduledoc """
  Definition of the saved query.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The server generated timestamp at which saved query was
      created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of the saved query.
  *   `matterId` (*type:* `String.t`, *default:* `nil`) - Output only. The matter id of the associated matter.
      The server does not look at this field during create and always uses matter
      id in the URL.
  *   `query` (*type:* `GoogleApi.Vault.V1.Model.Query.t`, *default:* `nil`) - The underlying Query object which contains all the information of the saved
      query.
  *   `savedQueryId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for the saved query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :displayName => String.t(),
          :matterId => String.t(),
          :query => GoogleApi.Vault.V1.Model.Query.t(),
          :savedQueryId => String.t()
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:matterId)
  field(:query, as: GoogleApi.Vault.V1.Model.Query)
  field(:savedQueryId)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.SavedQuery do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.SavedQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.SavedQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
