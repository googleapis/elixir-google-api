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

defmodule GoogleApi.Content.V21.Model.GmbAccountsGmbAccount do
  @moduledoc """


  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - The email which identifies the Business Profile.
  *   `listingCount` (*type:* `String.t`, *default:* `nil`) - Number of listings under this account.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the Business Profile.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the Business Profile (User or Business).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :listingCount => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:email)
  field(:listingCount)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.GmbAccountsGmbAccount do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.GmbAccountsGmbAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.GmbAccountsGmbAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
