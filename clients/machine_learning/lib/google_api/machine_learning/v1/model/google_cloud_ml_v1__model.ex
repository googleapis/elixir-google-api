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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Model do
  @moduledoc """
  Represents a machine learning solution.

  A model can have multiple versions, each of which is a deployed, trained
  model ready to receive prediction requests. The model itself is just a
  container.

  ## Attributes

  *   `defaultVersion` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version.t`, *default:* `nil`) - Output only. The default version of the model. This version will be used to
      handle prediction requests that do not specify a version.

      You can change the default version by calling
      projects.models.versions.setDefault.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description specified for the model when it was created.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - `etag` is used for optimistic concurrency control as a way to help
      prevent simultaneous updates of a model from overwriting each other.
      It is strongly suggested that systems make use of the `etag` in the
      read-modify-write cycle to perform model updates in order to avoid race
      conditions: An `etag` is returned in the response to `GetModel`, and
      systems are expected to put that etag in the request to `UpdateModel` to
      ensure that their change will be applied to the model as intended.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. One or more labels that you can add, to organize your models.
      Each label is a key-value pair, where both the key and the value are
      arbitrary strings that you supply.
      For more information, see the documentation on
      <a href="/ml-engine/docs/tensorflow/resource-labels">using labels</a>.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name specified for the model when it was created.

      The model name must be unique within the project it is created in.
  *   `onlinePredictionConsoleLogging` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, online prediction nodes send `stderr` and `stdout`
      streams to Stackdriver Logging. These can be more verbose than the standard
      access logs (see `onlinePredictionLogging`) and can incur higher cost.
      However, they are helpful for debugging. Note that
      [Stackdriver logs may incur a cost](/stackdriver/pricing), especially if
      your project receives prediction requests at a high QPS. Estimate your
      costs before enabling this option.

      Default is false.
  *   `onlinePredictionLogging` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, online prediction access logs are sent to StackDriver
      Logging. These logs are like standard server access logs, containing
      information like timestamp and latency for each request. Note that
      [Stackdriver logs may incur a cost](/stackdriver/pricing), especially if
      your project receives prediction requests at a high queries per second rate
      (QPS). Estimate your costs before enabling this option.

      Default is false.
  *   `regions` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The list of regions where the model is going to be deployed.
      Currently only one region per model is supported.
      Defaults to 'us-central1' if nothing is set.
      See the <a href="/ml-engine/docs/tensorflow/regions">available regions</a>
      for AI Platform services.
      Note:
      *   No matter where a model is deployed, it can always be accessed by
          users from anywhere, both for online and batch prediction.
      *   The region for a batch prediction job is set by the region field when
          submitting the batch prediction job and does not take its value from
          this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultVersion => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version.t(),
          :description => String.t(),
          :etag => String.t(),
          :labels => map(),
          :name => String.t(),
          :onlinePredictionConsoleLogging => boolean(),
          :onlinePredictionLogging => boolean(),
          :regions => list(String.t())
        }

  field(:defaultVersion, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:onlinePredictionConsoleLogging)
  field(:onlinePredictionLogging)
  field(:regions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Model do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Model.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Model do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
