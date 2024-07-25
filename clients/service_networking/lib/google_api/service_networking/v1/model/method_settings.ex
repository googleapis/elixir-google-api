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

defmodule GoogleApi.ServiceNetworking.V1.Model.MethodSettings do
  @moduledoc """
  Describes the generator configuration for a method.

  ## Attributes

  *   `autoPopulatedFields` (*type:* `list(String.t)`, *default:* `nil`) - List of top-level fields of the request message, that should be automatically populated by the client libraries based on their (google.api.field_info).format. Currently supported format: UUID4. Example of a YAML configuration: publishing: method_settings: - selector: google.example.v1.ExampleService.CreateExample auto_populated_fields: - request_id
  *   `longRunning` (*type:* `GoogleApi.ServiceNetworking.V1.Model.LongRunning.t`, *default:* `nil`) - Describes settings to use for long-running operations when generating API methods for RPCs. Complements RPCs that use the annotations in google/longrunning/operations.proto. Example of a YAML configuration:: publishing: method_settings: - selector: google.cloud.speech.v2.Speech.BatchRecognize long_running: initial_poll_delay: 60s # 1 minute poll_delay_multiplier: 1.5 max_poll_delay: 360s # 6 minutes total_poll_timeout: 54000s # 90 minutes
  *   `selector` (*type:* `String.t`, *default:* `nil`) - The fully qualified name of the method, for which the options below apply. This is used to find the method to apply the options. Example: publishing: method_settings: - selector: google.storage.control.v2.StorageControl.CreateFolder # method settings for CreateFolder...
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoPopulatedFields => list(String.t()) | nil,
          :longRunning => GoogleApi.ServiceNetworking.V1.Model.LongRunning.t() | nil,
          :selector => String.t() | nil
        }

  field(:autoPopulatedFields, type: :list)
  field(:longRunning, as: GoogleApi.ServiceNetworking.V1.Model.LongRunning)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.MethodSettings do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.MethodSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.MethodSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
