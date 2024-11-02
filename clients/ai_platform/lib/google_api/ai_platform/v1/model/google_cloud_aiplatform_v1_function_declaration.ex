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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration do
  @moduledoc """
  Structured representation of a function declaration as defined by the [OpenAPI 3.0 specification](https://spec.openapis.org/oas/v3.0.3). Included in this declaration are the function name, description, parameters and response type. This FunctionDeclaration is a representation of a block of code that can be used as a `Tool` by the model and executed by the client.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description and purpose of the function. Model uses it to decide how and whether to call the function.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the function to call. Must start with a letter or an underscore. Must be a-z, A-Z, 0-9, or contain underscores, dots and dashes, with a maximum length of 64.
  *   `parameters` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema.t`, *default:* `nil`) - Optional. Describes the parameters to this function in JSON Schema Object format. Reflects the Open API 3.03 Parameter Object. string Key: the name of the parameter. Parameter names are case sensitive. Schema Value: the Schema defining the type used for the parameter. For function with no parameters, this can be left unset. Parameter names must start with a letter or an underscore and must only contain chars a-z, A-Z, 0-9, or underscores with a maximum length of 64. Example with 1 required and 1 optional parameter: type: OBJECT properties: param1: type: STRING param2: type: INTEGER required: - param1
  *   `response` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema.t`, *default:* `nil`) - Optional. Describes the output from this function in JSON Schema format. Reflects the Open API 3.03 Response Object. The Schema defines the type used for the response value of the function.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :name => String.t() | nil,
          :parameters => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema.t() | nil,
          :response => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema.t() | nil
        }

  field(:description)
  field(:name)
  field(:parameters, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema)
  field(:response, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FunctionDeclaration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
