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

defmodule GoogleApi.SecurityCenter.V1.Model.SecurityMarks do
  @moduledoc """
  User specified security marks that are attached to the parent Cloud Security
  Command Center (Cloud SCC) resource. Security marks are scoped within a Cloud
  SCC organization -- they can be modified and viewed by all users who have
  proper permissions on the organization.

  ## Attributes

  *   `marks` (*type:* `map()`, *default:* `nil`) - Mutable user specified security marks belonging to the parent resource.
      Constraints are as follows:

        * Keys and values are treated as case insensitive
        * Keys must be between 1 - 256 characters (inclusive)
        * Keys must be letters, numbers, underscores, or dashes
        * Values have leading and trailing whitespace trimmed, remaining
          characters must be between 1 - 4096 characters (inclusive)
  *   `name` (*type:* `String.t`, *default:* `nil`) - The relative resource name of the SecurityMarks. See:
      https://cloud.google.com/apis/design/resource_names#relative_resource_name
      Examples:
      "organizations/{organization_id}/assets/{asset_id}/securityMarks"
      "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :marks => map(),
          :name => String.t()
        }

  field(:marks, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.SecurityMarks do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.SecurityMarks.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.SecurityMarks do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
