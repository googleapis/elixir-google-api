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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_GetConfigResponse do
  @moduledoc """
  Returns service account information associated with a project.

  ## Attributes

  *   `config` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Config.t`, *default:* `nil`) - 
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The service account Cloud ML uses to access resources in the project.
  *   `serviceAccountProject` (*type:* `String.t`, *default:* `nil`) - The project number for `service_account`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Config.t() | nil,
          :serviceAccount => String.t() | nil,
          :serviceAccountProject => String.t() | nil
        }

  field(:config, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Config)
  field(:serviceAccount)
  field(:serviceAccountProject)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_GetConfigResponse do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_GetConfigResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_GetConfigResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
