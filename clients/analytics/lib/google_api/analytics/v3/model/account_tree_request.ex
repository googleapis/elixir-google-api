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

defmodule GoogleApi.Analytics.V3.Model.AccountTreeRequest do
  @moduledoc """
  JSON template for an Analytics account tree requests. The account tree request is used in the provisioning api to create an account, property, and view (profile). It contains the basic information required to make these fields.

  ## Attributes

  *   `accountName` (*type:* `String.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `analytics#accountTreeRequest`) - Resource type for account ticket.
  *   `profileName` (*type:* `String.t`, *default:* `nil`) - 
  *   `timezone` (*type:* `String.t`, *default:* `nil`) - 
  *   `webpropertyName` (*type:* `String.t`, *default:* `nil`) - 
  *   `websiteUrl` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountName => String.t(),
          :kind => String.t(),
          :profileName => String.t(),
          :timezone => String.t(),
          :webpropertyName => String.t(),
          :websiteUrl => String.t()
        }

  field(:accountName)
  field(:kind)
  field(:profileName)
  field(:timezone)
  field(:webpropertyName)
  field(:websiteUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.AccountTreeRequest do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.AccountTreeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.AccountTreeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
