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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentParameter do
  @moduledoc """
  Represents intent parameters.

  ## Attributes

  *   `defaultValue` (*type:* `String.t`, *default:* `nil`) - Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the parameter.
  *   `entityTypeDisplayName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.
  *   `isList` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether the parameter represents a list of values.
  *   `mandatory` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of this parameter.
  *   `prompts` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultValue => String.t() | nil,
          :displayName => String.t() | nil,
          :entityTypeDisplayName => String.t() | nil,
          :isList => boolean() | nil,
          :mandatory => boolean() | nil,
          :name => String.t() | nil,
          :prompts => list(String.t()) | nil,
          :value => String.t() | nil
        }

  field(:defaultValue)
  field(:displayName)
  field(:entityTypeDisplayName)
  field(:isList)
  field(:mandatory)
  field(:name)
  field(:prompts, type: :list)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentParameter do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentParameter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
