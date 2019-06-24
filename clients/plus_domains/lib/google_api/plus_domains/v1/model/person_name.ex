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

defmodule GoogleApi.PlusDomains.V1.Model.PersonName do
  @moduledoc """
  An object representation of the individual components of a person's name.

  ## Attributes

  *   `familyName` (*type:* `String.t`, *default:* `nil`) - The family name (last name) of this person.
  *   `formatted` (*type:* `String.t`, *default:* `nil`) - The full name of this person, including middle names, suffixes, etc.
  *   `givenName` (*type:* `String.t`, *default:* `nil`) - The given name (first name) of this person.
  *   `honorificPrefix` (*type:* `String.t`, *default:* `nil`) - The honorific prefixes (such as "Dr." or "Mrs.") for this person.
  *   `honorificSuffix` (*type:* `String.t`, *default:* `nil`) - The honorific suffixes (such as "Jr.") for this person.
  *   `middleName` (*type:* `String.t`, *default:* `nil`) - The middle name of this person.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :familyName => String.t(),
          :formatted => String.t(),
          :givenName => String.t(),
          :honorificPrefix => String.t(),
          :honorificSuffix => String.t(),
          :middleName => String.t()
        }

  field(:familyName)
  field(:formatted)
  field(:givenName)
  field(:honorificPrefix)
  field(:honorificSuffix)
  field(:middleName)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.PersonName do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.PersonName.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.PersonName do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
