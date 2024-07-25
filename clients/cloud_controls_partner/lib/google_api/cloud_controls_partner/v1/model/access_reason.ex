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

defmodule GoogleApi.CloudControlsPartner.V1.Model.AccessReason do
  @moduledoc """
  Reason for the access.

  ## Attributes

  *   `detail` (*type:* `String.t`, *default:* `nil`) - More detail about certain reason types. See comments for each type above.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of access justification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detail => String.t() | nil,
          :type => String.t() | nil
        }

  field(:detail)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.AccessReason do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.AccessReason.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.AccessReason do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
