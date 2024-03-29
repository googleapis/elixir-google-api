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

defmodule GoogleApi.CloudSearch.V1.Model.EmailAddress do
  @moduledoc """
  A person's email address.

  ## Attributes

  *   `customType` (*type:* `String.t`, *default:* `nil`) - If the value of type is custom, this property contains the custom type string.
  *   `emailAddress` (*type:* `String.t`, *default:* `nil`) - The email address.
  *   `emailUrl` (*type:* `String.t`, *default:* `nil`) - The URL to send email.
  *   `primary` (*type:* `boolean()`, *default:* `nil`) - Indicates if this is the user's primary email. Only one entry can be marked as primary.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the email account. Acceptable values are: "custom", "home", "other", "work".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customType => String.t() | nil,
          :emailAddress => String.t() | nil,
          :emailUrl => String.t() | nil,
          :primary => boolean() | nil,
          :type => String.t() | nil
        }

  field(:customType)
  field(:emailAddress)
  field(:emailUrl)
  field(:primary)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.EmailAddress do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EmailAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.EmailAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
