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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse do
  @moduledoc """
  Response message for ListSKAdNetworkConversionValueSchemas RPC

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. Currently, Google Analytics supports only one SKAdNetworkConversionValueSchema per dataStream, so this will never be populated.
  *   `skadnetworkConversionValueSchemas` (*type:* `list(GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.t)`, *default:* `nil`) - List of SKAdNetworkConversionValueSchemas. This will have at most one value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :skadnetworkConversionValueSchemas =>
            list(
              GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.t()
            )
            | nil
        }

  field(:nextPageToken)

  field(:skadnetworkConversionValueSchemas,
    as:
      GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaListSKAdNetworkConversionValueSchemasResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end