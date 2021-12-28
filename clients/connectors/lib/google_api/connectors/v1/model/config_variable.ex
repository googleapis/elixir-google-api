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

defmodule GoogleApi.Connectors.V1.Model.ConfigVariable do
  @moduledoc """
  ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Value is a bool.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Value is an integer
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key of the config variable.
  *   `secretValue` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Value is a secret.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Value is a string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :intValue => String.t() | nil,
          :key => String.t() | nil,
          :secretValue => GoogleApi.Connectors.V1.Model.Secret.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:boolValue)
  field(:intValue)
  field(:key)
  field(:secretValue, as: GoogleApi.Connectors.V1.Model.Secret)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.ConfigVariable do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.ConfigVariable.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.ConfigVariable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
