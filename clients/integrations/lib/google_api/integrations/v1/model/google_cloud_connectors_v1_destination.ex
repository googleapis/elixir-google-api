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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Destination do
  @moduledoc """


  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - For publicly routable host.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The port is the target port number that is accepted by the destination.
  *   `serviceAttachment` (*type:* `String.t`, *default:* `nil`) - PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t() | nil,
          :port => integer() | nil,
          :serviceAttachment => String.t() | nil
        }

  field(:host)
  field(:port)
  field(:serviceAttachment)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Destination do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Destination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Destination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
