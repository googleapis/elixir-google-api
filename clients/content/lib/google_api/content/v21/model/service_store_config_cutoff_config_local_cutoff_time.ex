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

defmodule GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfigLocalCutoffTime do
  @moduledoc """
  Time in hours and minutes in the local timezone when local delivery ends.

  ## Attributes

  *   `hour` (*type:* `String.t`, *default:* `nil`) - Hour local delivery orders must be placed by to process the same day.
  *   `minute` (*type:* `String.t`, *default:* `nil`) - Minute local delivery orders must be placed by to process the same day.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hour => String.t() | nil,
          :minute => String.t() | nil
        }

  field(:hour)
  field(:minute)
end

defimpl Poison.Decoder,
  for: GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfigLocalCutoffTime do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfigLocalCutoffTime.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfigLocalCutoffTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
