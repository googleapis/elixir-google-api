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

defmodule GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsSettings do
  @moduledoc """
  Business calls settings for a location.

  ## Attributes

  *   `callsState` (*type:* `String.t`, *default:* `nil`) - Required. The state of this location's enrollment in Business calls.
  *   `consentTime` (*type:* `DateTime.t`, *default:* `nil`) - Input only. Time when the end user provided consent to the API user to enable business calls.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the calls settings. Format: locations/{location}/businesscallssettings
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callsState => String.t() | nil,
          :consentTime => DateTime.t() | nil,
          :name => String.t() | nil
        }

  field(:callsState)
  field(:consentTime, as: DateTime)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsSettings do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
