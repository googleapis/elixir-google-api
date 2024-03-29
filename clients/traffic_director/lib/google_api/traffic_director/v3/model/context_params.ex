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

defmodule GoogleApi.TrafficDirector.V3.Model.ContextParams do
  @moduledoc """
  Additional parameters that can be used to select resource variants. These include any global context parameters, per-resource type client feature capabilities and per-resource type functional attributes. All per-resource type attributes will be `xds.resource.` prefixed and some of these are documented below: `xds.resource.listening_address`: The value is "IP:port" (e.g. "10.1.1.3:8080") which is the listening address of a Listener. Used in a Listener resource query.

  ## Attributes

  *   `params` (*type:* `map()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :params => map() | nil
        }

  field(:params, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.ContextParams do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.ContextParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.ContextParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
