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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ListMeta do
  @moduledoc """
  ListMeta describes metadata that synthetic resources must have, including
  lists and various status objects. A resource may have only one of
  {ObjectMeta, ListMeta}.

  ## Attributes

  - continue (String.t): continue may be set if the user set a limit on the number of items
  returned, and indicates that the server has more data available. The value
  is opaque and may be used to issue another request to the endpoint that
  served this list to retrieve the next set of available objects. Continuing
  a list may not be possible if the server configuration has changed or more
  than a few minutes have passed. The resourceVersion field returned when
  using this continue value will be identical to the value in the first
  response. Defaults to `nil`.
  - resourceVersion (String.t): String that identifies the server's internal version of this object that
  can be used by clients to determine when objects have changed. Value must
  be treated as opaque by clients and passed unmodified back to the server.
  Populated by the system.
  Read-only.
  More info:
  https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency
  +optional Defaults to `nil`.
  - selfLink (String.t): SelfLink is a URL representing this object.
  Populated by the system.
  Read-only.
  +optional Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :continue => String.t(),
          :resourceVersion => String.t(),
          :selfLink => String.t()
        }

  field(:continue)
  field(:resourceVersion)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListMeta do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ListMeta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ListMeta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
