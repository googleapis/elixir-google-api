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

defmodule GoogleApi.Gmail.V1.Model.SmtpMsa do
  @moduledoc """
  Configuration for communication with an SMTP service.

  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - The hostname of the SMTP service. Required.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The password that will be used for authentication with the SMTP service. This is a write-only field that can be specified in requests to create or update SendAs settings; it is never populated in responses.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The port of the SMTP service. Required.
  *   `securityMode` (*type:* `String.t`, *default:* `nil`) - The protocol that will be used to secure communication with the SMTP service. Required.
  *   `username` (*type:* `String.t`, *default:* `nil`) - The username that will be used for authentication with the SMTP service. This is a write-only field that can be specified in requests to create or update SendAs settings; it is never populated in responses.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t(),
          :password => String.t(),
          :port => integer(),
          :securityMode => String.t(),
          :username => String.t()
        }

  field(:host)
  field(:password)
  field(:port)
  field(:securityMode)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.SmtpMsa do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.SmtpMsa.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.SmtpMsa do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
