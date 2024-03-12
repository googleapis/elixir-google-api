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

defmodule GoogleApi.Notebooks.V1.Model.DiagnoseInstanceRequest do
  @moduledoc """
  Request for creating a notebook instance diagnostic file.

  ## Attributes

  *   `diagnosticConfig` (*type:* `GoogleApi.Notebooks.V1.Model.DiagnosticConfig.t`, *default:* `nil`) - Required. Defines flags that are used to run the diagnostic tool
  *   `timeoutMinutes` (*type:* `integer()`, *default:* `nil`) - Optional. Maxmium amount of time in minutes before the operation times out.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diagnosticConfig => GoogleApi.Notebooks.V1.Model.DiagnosticConfig.t() | nil,
          :timeoutMinutes => integer() | nil
        }

  field(:diagnosticConfig, as: GoogleApi.Notebooks.V1.Model.DiagnosticConfig)
  field(:timeoutMinutes)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.DiagnoseInstanceRequest do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.DiagnoseInstanceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.DiagnoseInstanceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
