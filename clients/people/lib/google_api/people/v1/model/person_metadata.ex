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

defmodule GoogleApi.People.V1.Model.PersonMetadata do
  @moduledoc """
  The read-only metadata about a person.

  ## Attributes

  - deleted (boolean()): True if the person resource has been deleted. Populated only for
  [`connections.list`](/people/api/rest/v1/people.connections/list) requests
  that include a sync token. Defaults to `nil`.
  - linkedPeopleResourceNames (list(String.t)): Resource names of people linked to this resource. Defaults to `nil`.
  - objectType (String.t): **DEPRECATED** (Please use
  `person.metadata.sources.profileMetadata.objectType` instead)

  The type of the person object. Defaults to `nil`.
  - previousResourceNames (list(String.t)): Any former resource names this person has had. Populated only for
  [`connections.list`](/people/api/rest/v1/people.connections/list) requests
  that include a sync token.

  The resource name may change when adding or removing fields that link a
  contact and profile such as a verified email, verified phone number, or
  profile URL. Defaults to `nil`.
  - sources (list(GoogleApi.People.V1.Model.Source.t)): The sources of data for the person. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleted => boolean(),
          :linkedPeopleResourceNames => list(String.t()),
          :objectType => String.t(),
          :previousResourceNames => list(String.t()),
          :sources => list(GoogleApi.People.V1.Model.Source.t())
        }

  field(:deleted)
  field(:linkedPeopleResourceNames, type: :list)
  field(:objectType)
  field(:previousResourceNames, type: :list)
  field(:sources, as: GoogleApi.People.V1.Model.Source, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.PersonMetadata do
  def decode(value, options) do
    GoogleApi.People.V1.Model.PersonMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.PersonMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
