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

defmodule GoogleApi.TrafficDirector.V3.Model.ListenersConfigDump do
  @moduledoc """
  Envoy's listener manager fills this message with all currently known listeners. Listener configuration information can be used to recreate an Envoy configuration by populating all listeners as static listeners or by returning them in a LDS response.

  ## Attributes

  *   `dynamicListeners` (*type:* `list(GoogleApi.TrafficDirector.V3.Model.DynamicListener.t)`, *default:* `nil`) - State for any warming, active, or draining listeners.
  *   `staticListeners` (*type:* `list(GoogleApi.TrafficDirector.V3.Model.StaticListener.t)`, *default:* `nil`) - The statically loaded listener configs.
  *   `versionInfo` (*type:* `String.t`, *default:* `nil`) - This is the :ref:`version_info ` in the last processed LDS discovery response. If there are only static bootstrap listeners, this field will be "".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicListeners => list(GoogleApi.TrafficDirector.V3.Model.DynamicListener.t()) | nil,
          :staticListeners => list(GoogleApi.TrafficDirector.V3.Model.StaticListener.t()) | nil,
          :versionInfo => String.t() | nil
        }

  field(:dynamicListeners, as: GoogleApi.TrafficDirector.V3.Model.DynamicListener, type: :list)
  field(:staticListeners, as: GoogleApi.TrafficDirector.V3.Model.StaticListener, type: :list)
  field(:versionInfo)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.ListenersConfigDump do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.ListenersConfigDump.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.ListenersConfigDump do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
