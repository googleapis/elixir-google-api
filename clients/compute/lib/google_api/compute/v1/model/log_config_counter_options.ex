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

defmodule GoogleApi.Compute.V1.Model.LogConfigCounterOptions do
  @moduledoc """
  Increment a streamz counter with the specified metric and field names.

  Metric names should start with a '/', generally be lowercase-only, and end in "_count". Field names should not contain an initial slash. The actual exported metric names will have "/iam/policy" prepended.

  Field names correspond to IAM request parameters and field values are their respective values.

  Supported field names: - "authority", which is "[token]" if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - "iam_principal", a representation of IAMContext.principal even if a token or authority selector is present; or - "" (empty string), resulting in a counter with no fields.

  Examples: counter { metric: "/debug_access_count" field: "iam_principal" } ==> increment counter /iam/policy/debug_access_count {iam_principal=[value of IAMContext.principal]}

  TODO(b/141846426): Consider supporting "authority" and "iam_principal" fields in the same counter.

  ## Attributes

  *   `customFields` (*type:* `list(GoogleApi.Compute.V1.Model.LogConfigCounterOptionsCustomField.t)`, *default:* `nil`) - Custom fields.
  *   `field` (*type:* `String.t`, *default:* `nil`) - The field value to attribute.
  *   `metric` (*type:* `String.t`, *default:* `nil`) - The metric to update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customFields =>
            list(GoogleApi.Compute.V1.Model.LogConfigCounterOptionsCustomField.t()),
          :field => String.t(),
          :metric => String.t()
        }

  field(
    :customFields,
    as: GoogleApi.Compute.V1.Model.LogConfigCounterOptionsCustomField,
    type: :list
  )

  field(:field)
  field(:metric)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.LogConfigCounterOptions do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.LogConfigCounterOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.LogConfigCounterOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
