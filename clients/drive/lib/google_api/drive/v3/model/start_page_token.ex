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

defmodule GoogleApi.Drive.V3.Model.StartPageToken do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `drive#startPageToken`) - Identifies what kind of resource this is. Value: the fixed string `"drive#startPageToken"`.
  *   `startPageToken` (*type:* `String.t`, *default:* `nil`) - The starting page token for listing future changes. The page token doesn't expire.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :startPageToken => String.t() | nil
        }

  field(:kind)
  field(:startPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.StartPageToken do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.StartPageToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.StartPageToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
