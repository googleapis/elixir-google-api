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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceConfigOverride do
  @moduledoc """
  A representation of a configuration override.

  ## Attributes

  *   `apiProxy` (*type:* `String.t`, *default:* `nil`) - ID of the API proxy that will have its trace configuration overridden.
  *   `name` (*type:* `String.t`, *default:* `nil`) - ID of the trace configuration override specified as a system-generated UUID.
  *   `samplingConfig` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceSamplingConfig.t`, *default:* `nil`) - Trace configuration to override.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiProxy => String.t(),
          :name => String.t(),
          :samplingConfig => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceSamplingConfig.t()
        }

  field(:apiProxy)
  field(:name)
  field(:samplingConfig, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceSamplingConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceConfigOverride do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceConfigOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TraceConfigOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
