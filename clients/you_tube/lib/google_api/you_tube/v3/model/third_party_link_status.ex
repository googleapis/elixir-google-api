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

defmodule GoogleApi.YouTube.V3.Model.ThirdPartyLinkStatus do
  @moduledoc """
  The third-party link status object contains information about the status of the link.

  ## Attributes

  *   `linkStatus` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :linkStatus => String.t() | nil
        }

  field(:linkStatus)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ThirdPartyLinkStatus do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.ThirdPartyLinkStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ThirdPartyLinkStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
