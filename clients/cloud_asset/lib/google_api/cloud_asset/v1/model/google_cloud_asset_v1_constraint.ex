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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint do
  @moduledoc """
  The definition of a constraint.

  ## Attributes

  *   `booleanConstraint` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1BooleanConstraint.t`, *default:* `nil`) - Defines this constraint as being a BooleanConstraint.
  *   `constraintDefault` (*type:* `String.t`, *default:* `nil`) - The evaluation behavior of this constraint in the absence of 'Policy'.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Detailed description of what this `Constraint` controls as well as how and where it is enforced.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The human readable name of the constraint.
  *   `listConstraint` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1ListConstraint.t`, *default:* `nil`) - Defines this constraint as being a ListConstraint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique name of the constraint. Format of the name should be * `constraints/{constraint_name}` For example, `constraints/compute.disableSerialPortAccess`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanConstraint =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1BooleanConstraint.t() | nil,
          :constraintDefault => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :listConstraint =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1ListConstraint.t() | nil,
          :name => String.t() | nil
        }

  field(:booleanConstraint, as: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1BooleanConstraint)
  field(:constraintDefault)
  field(:description)
  field(:displayName)
  field(:listConstraint, as: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1ListConstraint)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
