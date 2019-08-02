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

defmodule GoogleApi.AndroidManagement.V1.Model.PostureDetail do
  @moduledoc """
  Detail that provides further information if the device is not in the most secure state.

  ## Attributes

  *   `advice` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t)`, *default:* `nil`) - Corresponding pieces of advice to mitigate the security risk.
  *   `securityRisk` (*type:* `String.t`, *default:* `nil`) - The risk that makes the device not in the most secure state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advice => list(GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t()),
          :securityRisk => String.t()
        }

  field(:advice, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage, type: :list)
  field(:securityRisk)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PostureDetail do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PostureDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PostureDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
