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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime do
  @moduledoc """
  Container Image Runtime Configuration used with Batch execution.

  ## Attributes

  *   `image` (*type:* `String.t`, *default:* `nil`) - Optional. Container image to use.
  *   `javaJars` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  *   `properties` (*type:* `map()`, *default:* `nil`) - Optional. Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  *   `pythonPackages` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :image => String.t() | nil,
          :javaJars => list(String.t()) | nil,
          :properties => map() | nil,
          :pythonPackages => list(String.t()) | nil
        }

  field(:image)
  field(:javaJars, type: :list)
  field(:properties, type: :map)
  field(:pythonPackages, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
