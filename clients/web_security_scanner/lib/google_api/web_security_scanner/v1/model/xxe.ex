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

defmodule GoogleApi.WebSecurityScanner.V1.Model.Xxe do
  @moduledoc """
  Information reported for an XXE.

  ## Attributes

  *   `payloadLocation` (*type:* `String.t`, *default:* `nil`) - Location within the request where the payload was placed.
  *   `payloadValue` (*type:* `String.t`, *default:* `nil`) - The XML string that triggered the XXE vulnerability. Non-payload values might be redacted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payloadLocation => String.t() | nil,
          :payloadValue => String.t() | nil
        }

  field(:payloadLocation)
  field(:payloadValue)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1.Model.Xxe do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1.Model.Xxe.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1.Model.Xxe do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
