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

defmodule GoogleApi.People.V1.Model.PersonResponse do
  @moduledoc """
  The response for a single person

  ## Attributes

  *   `httpStatusCode` (*type:* `integer()`, *default:* `nil`) - **DEPRECATED** (Please use status instead)

      [HTTP 1.1 status code]
      (http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html).
  *   `person` (*type:* `GoogleApi.People.V1.Model.Person.t`, *default:* `nil`) - The person.
  *   `requestedResourceName` (*type:* `String.t`, *default:* `nil`) - The original requested resource name. May be different than the resource
      name on the returned person.

      The resource name can change when adding or removing fields that link a
      contact and profile such as a verified email, verified phone number, or a
      profile URL.
  *   `status` (*type:* `GoogleApi.People.V1.Model.Status.t`, *default:* `nil`) - The status of the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpStatusCode => integer(),
          :person => GoogleApi.People.V1.Model.Person.t(),
          :requestedResourceName => String.t(),
          :status => GoogleApi.People.V1.Model.Status.t()
        }

  field(:httpStatusCode)
  field(:person, as: GoogleApi.People.V1.Model.Person)
  field(:requestedResourceName)
  field(:status, as: GoogleApi.People.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.PersonResponse do
  def decode(value, options) do
    GoogleApi.People.V1.Model.PersonResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.PersonResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
