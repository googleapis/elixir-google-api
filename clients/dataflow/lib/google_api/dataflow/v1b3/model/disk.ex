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

defmodule GoogleApi.Dataflow.V1b3.Model.Disk do
  @moduledoc """
  Describes the data disk used by a workflow job.

  ## Attributes

  - diskType (String.t): Disk storage type, as defined by Google Compute Engine.  This
  must be a disk type appropriate to the project and zone in which
  the workers will run.  If unknown or unspecified, the service
  will attempt to choose a reasonable default.

  For example, the standard persistent disk type is a resource name
  typically ending in "pd-standard".  If SSD persistent disks are
  available, the resource name typically ends with "pd-ssd".  The
  actual valid values are defined the Google Compute Engine API,
  not by the Cloud Dataflow API; consult the Google Compute Engine
  documentation for more information about determining the set of
  available disk types for a particular project and zone.

  Google Compute Engine Disk types are local to a particular
  project in a particular zone, and so the resource name will
  typically look something like this:

  compute.googleapis.com/projects/project-id/zones/zone/diskTypes/pd-standard Defaults to `nil`.
  - mountPoint (String.t): Directory in a VM where disk is mounted. Defaults to `nil`.
  - sizeGb (integer()): Size of disk in GB.  If zero or unspecified, the service will
  attempt to choose a reasonable default. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskType => String.t(),
          :mountPoint => String.t(),
          :sizeGb => integer()
        }

  field(:diskType)
  field(:mountPoint)
  field(:sizeGb)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Disk do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Disk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Disk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
