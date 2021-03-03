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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentPolicy do
  @moduledoc """
  Represents a user's consent in terms of the resources that can be accessed and under what conditions.

  ## Attributes

  *   `authorizationRule` (*type:* `GoogleApi.HealthCare.V1beta1.Model.Expr.t`, *default:* `nil`) - Required. The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  *   `resourceAttributes` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.Attribute.t)`, *default:* `nil`) - The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizationRule => GoogleApi.HealthCare.V1beta1.Model.Expr.t(),
          :resourceAttributes => list(GoogleApi.HealthCare.V1beta1.Model.Attribute.t())
        }

  field(:authorizationRule, as: GoogleApi.HealthCare.V1beta1.Model.Expr)
  field(:resourceAttributes, as: GoogleApi.HealthCare.V1beta1.Model.Attribute, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentPolicy do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentPolicy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1ConsentPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
