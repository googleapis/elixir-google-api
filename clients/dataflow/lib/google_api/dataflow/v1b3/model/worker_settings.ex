# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.WorkerSettings do
  @moduledoc """
  Provides data to pass through to the worker harness.

  ## Attributes

  - baseUrl (String.t): The base URL for accessing Google Cloud APIs.

  When workers access Google Cloud APIs, they logically do so via
  relative URLs.  If this field is specified, it supplies the base
  URL to use for resolving these relative URLs.  The normative
  algorithm used is defined by RFC 1808, "Relative Uniform Resource
  Locators".

  If not specified, the default value is "http://www.googleapis.com/" Defaults to `nil`.
  - reportingEnabled (boolean()): Whether to send work progress updates to the service. Defaults to `nil`.
  - servicePath (String.t): The Cloud Dataflow service path relative to the root URL, for example,
  "dataflow/v1b3/projects". Defaults to `nil`.
  - shuffleServicePath (String.t): The Shuffle service path relative to the root URL, for example,
  "shuffle/v1beta1". Defaults to `nil`.
  - tempStoragePrefix (String.t): The prefix of the resources the system should use for temporary
  storage.

  The supported resource type is:

  Google Cloud Storage:

  storage.googleapis.com/{bucket}/{object}
  bucket.storage.googleapis.com/{object} Defaults to `nil`.
  - workerId (String.t): The ID of the worker running this pipeline. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseUrl => String.t(),
          :reportingEnabled => boolean(),
          :servicePath => String.t(),
          :shuffleServicePath => String.t(),
          :tempStoragePrefix => String.t(),
          :workerId => String.t()
        }

  field(:baseUrl)
  field(:reportingEnabled)
  field(:servicePath)
  field(:shuffleServicePath)
  field(:tempStoragePrefix)
  field(:workerId)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerSettings do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkerSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
