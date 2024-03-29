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

defmodule GoogleApi.Notebooks.V1.Model.InstanceMigrationEligibility do
  @moduledoc """
  InstanceMigrationEligibility represents the feasibility information of a migration from UmN to WbI.

  ## Attributes

  *   `errors` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Certain configurations make the UmN ineligible for an automatic migration. A manual migration is required.
  *   `warnings` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Certain configurations will be defaulted during the migration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(String.t()) | nil,
          :warnings => list(String.t()) | nil
        }

  field(:errors, type: :list)
  field(:warnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.InstanceMigrationEligibility do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.InstanceMigrationEligibility.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.InstanceMigrationEligibility do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
