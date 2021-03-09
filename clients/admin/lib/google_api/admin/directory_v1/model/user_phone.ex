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

defmodule GoogleApi.Admin.Directory_v1.Model.UserPhone do
  @moduledoc """
  JSON template for a phone entry.

  ## Attributes

  *   `customType` (*type:* `String.t`, *default:* `nil`) - Custom Type.
  *   `primary` (*type:* `boolean()`, *default:* `nil`) - If this is user's primary phone or not.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Each entry can have a type which indicates standard types of that entry. For example phone could be of home_fax work mobile etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Phone number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customType => String.t() | nil,
          :primary => boolean() | nil,
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:customType)
  field(:primary)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.UserPhone do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.UserPhone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.UserPhone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
