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

defmodule GoogleApi.Monitoring.V3.Model.ResourceGroup do
  @moduledoc """
  The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.

  ## Attributes

  *   `groupId` (*type:* `String.t`, *default:* `nil`) - The group of resources being monitored. Should be only the group_id, not projects/<project_id>/groups/<group_id>.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - The resource type of the group members.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupId => String.t(),
          :resourceType => String.t()
        }

  field(:groupId)
  field(:resourceType)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ResourceGroup do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ResourceGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ResourceGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
