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

defmodule GoogleApi.Dataflow.V1b3.Model.Step do
  @moduledoc """
  Defines a particular step within a Cloud Dataflow job. A job consists of multiple steps, each of which performs some specific operation as part of the overall job. Data is typically passed from one step to another as part of the job. **Note:** The properties of this object are not stable and might change. Here's an example of a sequence of steps which together implement a Map-Reduce job: * Read a collection of data from some source, parsing the collection's elements. * Validate the elements. * Apply a user-defined function to map each element to some value and extract an element-specific key value. * Group elements with the same key into a single element with that key, transforming a multiply-keyed collection into a uniquely-keyed collection. * Write the elements out to some data sink. Note that the Cloud Dataflow service may be used to run many different types of jobs, not just Map-Reduce.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of step in the Cloud Dataflow job.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name that identifies the step. This must be unique for each step with respect to all other steps in the Cloud Dataflow job.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Named properties associated with the step. Each kind of predefined step has its own required set of properties. Must be provided on Create. Only retrieved with JOB_VIEW_ALL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :properties => map() | nil
        }

  field(:kind)
  field(:name)
  field(:properties, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Step do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Step.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Step do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
