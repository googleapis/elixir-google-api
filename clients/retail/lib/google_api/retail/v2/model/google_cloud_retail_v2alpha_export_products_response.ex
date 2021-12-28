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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportProductsResponse do
  @moduledoc """
  Response of the ExportProductsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

  ## Attributes

  *   `errorSamples` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleRpcStatus.t)`, *default:* `nil`) - A sample of errors encountered while processing the request.
  *   `errorsConfig` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportErrorsConfig.t`, *default:* `nil`) - Echoes the destination for the complete errors in the request if set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorSamples => list(GoogleApi.Retail.V2.Model.GoogleRpcStatus.t()) | nil,
          :errorsConfig =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportErrorsConfig.t() | nil
        }

  field(:errorSamples, as: GoogleApi.Retail.V2.Model.GoogleRpcStatus, type: :list)
  field(:errorsConfig, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportErrorsConfig)
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportProductsResponse do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportProductsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaExportProductsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
