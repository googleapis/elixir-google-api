# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CivicInfo.V2.Model.Official do
  @moduledoc """
  Information about a person holding an elected office.

  ## Attributes

  - address ([SimpleAddressType]): Addresses at which to contact the official. Defaults to: `null`.
  - channels ([Channel]): A list of known (social) media channels for this official. Defaults to: `null`.
  - emails ([String.t]): The direct email addresses for the official. Defaults to: `null`.
  - name (String.t): The official&#39;s name. Defaults to: `null`.
  - party (String.t): The full name of the party the official belongs to. Defaults to: `null`.
  - phones ([String.t]): The official&#39;s public contact phone numbers. Defaults to: `null`.
  - photoUrl (String.t): A URL for a photo of the official. Defaults to: `null`.
  - urls ([String.t]): The official&#39;s public website URLs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => list(GoogleApi.CivicInfo.V2.Model.SimpleAddressType.t()),
          :channels => list(GoogleApi.CivicInfo.V2.Model.Channel.t()),
          :emails => list(any()),
          :name => any(),
          :party => any(),
          :phones => list(any()),
          :photoUrl => any(),
          :urls => list(any())
        }

  field(:address, as: GoogleApi.CivicInfo.V2.Model.SimpleAddressType, type: :list)
  field(:channels, as: GoogleApi.CivicInfo.V2.Model.Channel, type: :list)
  field(:emails, type: :list)
  field(:name)
  field(:party)
  field(:phones, type: :list)
  field(:photoUrl)
  field(:urls, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Official do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Official.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Official do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
