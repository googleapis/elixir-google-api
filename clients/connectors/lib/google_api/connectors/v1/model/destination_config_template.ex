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

defmodule GoogleApi.Connectors.V1.Model.DestinationConfigTemplate do
  @moduledoc """
  DestinationConfigTemplate defines required destinations supported by the Connector.

  ## Attributes

  *   `autocompleteSuggestions` (*type:* `list(String.t)`, *default:* `nil`) - Autocomplete suggestions for destination URL field.
  *   `defaultPort` (*type:* `integer()`, *default:* `nil`) - The default port.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the parameter.
  *   `isAdvanced` (*type:* `boolean()`, *default:* `nil`) - Whether the current destination tempalate is part of Advanced settings
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key of the destination.
  *   `max` (*type:* `integer()`, *default:* `nil`) - The maximum number of destinations supported for this key.
  *   `min` (*type:* `integer()`, *default:* `nil`) - The minimum number of destinations supported for this key.
  *   `portFieldType` (*type:* `String.t`, *default:* `nil`) - Whether port number should be provided by customers.
  *   `regexPattern` (*type:* `String.t`, *default:* `nil`) - Regex pattern for host.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autocompleteSuggestions => list(String.t()) | nil,
          :defaultPort => integer() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :isAdvanced => boolean() | nil,
          :key => String.t() | nil,
          :max => integer() | nil,
          :min => integer() | nil,
          :portFieldType => String.t() | nil,
          :regexPattern => String.t() | nil
        }

  field(:autocompleteSuggestions, type: :list)
  field(:defaultPort)
  field(:description)
  field(:displayName)
  field(:isAdvanced)
  field(:key)
  field(:max)
  field(:min)
  field(:portFieldType)
  field(:regexPattern)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.DestinationConfigTemplate do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.DestinationConfigTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.DestinationConfigTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
