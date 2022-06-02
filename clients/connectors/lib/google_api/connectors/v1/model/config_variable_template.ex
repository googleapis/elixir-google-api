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

defmodule GoogleApi.Connectors.V1.Model.ConfigVariableTemplate do
  @moduledoc """
  ConfigVariableTemplate provides metadata about a `ConfigVariable` that is used in a Connection.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Description.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the parameter.
  *   `enumOptions` (*type:* `list(GoogleApi.Connectors.V1.Model.EnumOption.t)`, *default:* `nil`) - Enum options. To be populated if `ValueType` is `ENUM`
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key of the config variable.
  *   `required` (*type:* `boolean()`, *default:* `nil`) - Flag represents that this `ConfigVariable` must be provided for a connection.
  *   `roleGrant` (*type:* `GoogleApi.Connectors.V1.Model.RoleGrant.t`, *default:* `nil`) - Role grant configuration for the config variable.
  *   `validationRegex` (*type:* `String.t`, *default:* `nil`) - Regular expression in RE2 syntax used for validating the `value` of a `ConfigVariable`.
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - Type of the parameter: string, int, bool etc. consider custom type for the benefit for the validation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :enumOptions => list(GoogleApi.Connectors.V1.Model.EnumOption.t()) | nil,
          :key => String.t() | nil,
          :required => boolean() | nil,
          :roleGrant => GoogleApi.Connectors.V1.Model.RoleGrant.t() | nil,
          :validationRegex => String.t() | nil,
          :valueType => String.t() | nil
        }

  field(:description)
  field(:displayName)
  field(:enumOptions, as: GoogleApi.Connectors.V1.Model.EnumOption, type: :list)
  field(:key)
  field(:required)
  field(:roleGrant, as: GoogleApi.Connectors.V1.Model.RoleGrant)
  field(:validationRegex)
  field(:valueType)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.ConfigVariableTemplate do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.ConfigVariableTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.ConfigVariableTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
